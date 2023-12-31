<!--next-version-placeholder-->

## v0.3.0 (2023-08-31)

### Feature

* **docker:** Update controller and API service ports, add new fastchat-web-server service ([`c0d37a8`](https://github.com/entelecheia/fastchat-container/commit/c0d37a8332a5805bf045a30046371e8a9830df38))
* **docker:** Add API service port configurations ([`2e4ef0a`](https://github.com/entelecheia/fastchat-container/commit/2e4ef0a7832c0f146162f2b129c31b036e6edf16))

## v0.2.0 (2023-08-31)

### Feature

* **docker:** Add detached mode for launching docker app ([`2fad764`](https://github.com/entelecheia/fastchat-container/commit/2fad764eda3d67c0b0954ddfbe2fa801446b88aa))

### Fix

* **docker:** Change directory name from HUGGINGFACE_CACHE_DIR to HF_HOME ([`0fc1195`](https://github.com/entelecheia/fastchat-container/commit/0fc11951941487c32b4d213dafc84656363bd676))
* **docker:** Organize and rename environment variables ([`5315633`](https://github.com/entelecheia/fastchat-container/commit/53156334943707ebcf43eaefa66264bb9765f9d6))
* **docker:** Correct typo in variable name ([`b687cfd`](https://github.com/entelecheia/fastchat-container/commit/b687cfd4ddd3554b246b51f267dd69b3d9819b30))

## v0.1.7 (2023-08-30)

### Fix

* **.docker:** Add support for creating host directories ([`f6207d5`](https://github.com/entelecheia/fastchat-container/commit/f6207d5d5526df896d99f5491cbcefe2e4432a95))
* **docker:** Add Huggingface cache directory to docker app env ([`6c799e9`](https://github.com/entelecheia/fastchat-container/commit/6c799e9fecd7a6fa006cfcccf9e8b3bd3c069b86))
* **docker:** Change volume mapping for huggingface cache ([`998305e`](https://github.com/entelecheia/fastchat-container/commit/998305ecc84784b0e7c3f6740c41f5e6f9761185))
* **docker:** Implement dynamic environment variables, update fastchat image details, change fastchat controller address ([`e837407`](https://github.com/entelecheia/fastchat-container/commit/e837407a5d03bfdb555f67d2c217487ab4f28a6e))

## v0.1.6 (2023-08-30)

### Fix

* **docker:** Remove train from fschat requirements in docker scripts ([`328aed2`](https://github.com/entelecheia/fastchat-container/commit/328aed21fb8b39263fb325bcea56b0735c1d4f20))

## v0.1.5 (2023-08-30)

### Fix

* **docker:** Add packaging module to Dockerfile.app ([`f4579d7`](https://github.com/entelecheia/fastchat-container/commit/f4579d7062d5757360ff1608d0700b8a6de0b964))

## v0.1.4 (2023-08-30)

### Fix

* **.docker/scripts:** Add packaging to requirements.txt ([`e8e62ba`](https://github.com/entelecheia/fastchat-container/commit/e8e62bae1584a69901460e0e5f47bfa2d5d7c801))

## v0.1.3 (2023-08-30)

### Fix

* **docker:** Update requirements in docker scripts ([`cdc3655`](https://github.com/entelecheia/fastchat-container/commit/cdc3655fbf5071a503d0a4f913c0a95bad12a13c))
* **dockerfile:** Use sudo for pip installation ([`604bf98`](https://github.com/entelecheia/fastchat-container/commit/604bf98c0372f59f9a745cd72bd0d5e47e67d178))

## v0.1.2 (2023-08-30)

### Fix

* **docker:** Add .local/bin to PATH ([`445e392`](https://github.com/entelecheia/fastchat-container/commit/445e3925ce2dd3846457010b9f3b64e45d74fc6a))

## v0.1.1 (2023-08-30)

### Fix

* **docker:** Update python pip setup in Dockerfile.base ([`b3686a2`](https://github.com/entelecheia/fastchat-container/commit/b3686a2e26e08c0278e3b677d699192606638afa))

## v0.1.0 (2023-08-30)

### Feature

* **docker:** Add fschat in requirements.txt ([`7eca04c`](https://github.com/entelecheia/fastchat-container/commit/7eca04c518a4d8b3898864c5470251ef5f4f6b6c))
* **fastchat-controller:** Define new entrypoint ([`9c7b101`](https://github.com/entelecheia/fastchat-container/commit/9c7b101c35bc8494b5887868116f429ac32fcf24))
* **docker:** Install pip in Dockerfile.base ([`79801aa`](https://github.com/entelecheia/fastchat-container/commit/79801aa346cb88d7dc00d80e10d88912449241c4))
* Initial commit ([`86ba594`](https://github.com/entelecheia/fastchat-container/commit/86ba5944b8879fa50d55ba6c2367f51511d959da))

### Fix

* **docker-config:** Disable clone_source_code, jupyter, and ssh_service ([`6c3a051`](https://github.com/entelecheia/fastchat-container/commit/6c3a051922d724346764e382df12ec6966c2b08f))
