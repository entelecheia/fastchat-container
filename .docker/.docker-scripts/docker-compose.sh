#!/bin/bash
# add your custom commands here that should be executed when building the docker image
COMMAND=${1:-"build"}
VARIANT=${2:-"base"}
RUN_COMMAND=${3:-"bash"}

if [ "${COMMAND}" == "build" ]; then
    echo "Building docker image for variant: ${VARIANT}"
elif [ "${COMMAND}" == "config" ]; then
    echo "Printing docker config for variant: ${VARIANT}"
elif [ "${COMMAND}" == "push" ]; then
    echo "Pushing docker image for variant: ${VARIANT}"
elif [ "${COMMAND}" == "up" ]; then
    echo "Starting docker container for variant: ${VARIANT}"
elif [ "${COMMAND}" == "down" ]; then
    echo "Stopping docker container for variant: ${VARIANT}"
elif [ "${COMMAND}" == "run" ]; then
    echo "Running docker container for variant: ${VARIANT}"
elif [ "${COMMAND}" == "login" ]; then
    echo "Logging into docker registry for variant: ${VARIANT}"
else
    echo "Invalid command: ${COMMAND}"
    echo "Usage: $0 [build|config|push|login|up|down|run] [base|app]"
    exit 1
fi
echo "---"

# load environment variables
set -a
# load secert environment variables from .env.secret
if [ -e .env.secret ]; then
    # shellcheck disable=SC1091
    source .env.secret
fi
# shellcheck disable=SC1091
source .docker/docker.version
if [ -e .docker/docker.common.env ]; then
    # shellcheck disable=SC1091
    source .docker/docker.common.env
fi
if [ -e ".docker/docker.${VARIANT}.env" ]; then
    # shellcheck disable=SC1091,SC1090
    source ".docker/docker.${VARIANT}.env"
fi
set +a

# prepare docker network
if [[ -n "${CONTAINER_NETWORK_NAME}" ]] && ! docker network ls | grep -q "${CONTAINER_NETWORK_NAME}"; then
    echo "Creating network ${CONTAINER_NETWORK_NAME}"
    docker network create "${CONTAINER_NETWORK_NAME}"
else
    echo "Network ${CONTAINER_NETWORK_NAME} already exists."
fi

# prepare host directories
if [[ -n "${HOST_HUGGINGFACE_CACHE_DIR}" ]] && [[ ! -d "${HOST_HUGGINGFACE_CACHE_DIR}" ]]; then
    echo "Creating host directory ${HOST_HUGGINGFACE_CACHE_DIR}"
    mkdir -p "${HOST_HUGGINGFACE_CACHE_DIR}"
fi

# run docker-compose
if [ "${COMMAND}" == "push" ]; then
    docker push "${CONTAINTER_REGISTRY}/${IMAGE_NAME}:${IMAGE_TAG}"
elif [ "${COMMAND}" == "login" ]; then
    echo "GITHUB_CR_PAT: $GITHUB_CR_PAT"
    docker login ghcr.io -u "$GITHUB_USERNAME"
elif [ "${COMMAND}" == "run" ]; then
    docker-compose --project-directory . -f ".docker/docker-compose.${VARIANT}.yaml" run "fastchat-api-server" "${RUN_COMMAND}"
else
    docker-compose --project-directory . -f ".docker/docker-compose.${VARIANT}.yaml" "${COMMAND}"
fi
