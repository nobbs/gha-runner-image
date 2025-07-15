# Changelog

## [0.2.1](https://github.com/nobbs/gha-runner-image/compare/v0.2.0...v0.2.1) (2025-07-15)


### Miscellaneous Chores

* **deps:** update dependency docker to v28.3.2 ([#56](https://github.com/nobbs/gha-runner-image/issues/56)) ([f4e644c](https://github.com/nobbs/gha-runner-image/commit/f4e644ce03dba45cdc79fb91b786810ad36d875e))
* **docker:** add Azure CLI ([#58](https://github.com/nobbs/gha-runner-image/issues/58)) ([44bb6cd](https://github.com/nobbs/gha-runner-image/commit/44bb6cdbe123a6c2399dd735e49dd756f471d427))

## [0.2.0](https://github.com/nobbs/gha-runner-image/compare/v0.1.0...v0.2.0) (2025-07-09)


### Features

* **docker:** refactor Dockerfile and scripts for improved installation process ([#51](https://github.com/nobbs/gha-runner-image/issues/51)) ([82209c3](https://github.com/nobbs/gha-runner-image/commit/82209c3dbe4d0a16bbf03b9f71fb45be89730efe))


### Miscellaneous Chores

* **base:** remove apt-get bad proxy fix ([#49](https://github.com/nobbs/gha-runner-image/issues/49)) ([ec1851c](https://github.com/nobbs/gha-runner-image/commit/ec1851c43506cdce497389f94051e7b3890ccbde))
* **deps:** update dependency docker-compose to v2.38.2 ([#54](https://github.com/nobbs/gha-runner-image/issues/54)) ([b0a42ed](https://github.com/nobbs/gha-runner-image/commit/b0a42ed3be86c7c5ea93fd861a94e87e2441c150))
* **deps:** update dependency helm to v3.18.4 ([#55](https://github.com/nobbs/gha-runner-image/issues/55)) ([d0ce00f](https://github.com/nobbs/gha-runner-image/commit/d0ce00f499173919d9be03dabbd29839431e8359))
* **deps:** update dependency runner to v2.326.0 ([#52](https://github.com/nobbs/gha-runner-image/issues/52)) ([28f69d5](https://github.com/nobbs/gha-runner-image/commit/28f69d551a9c5557a2afa7dfe33138247eaf5b95))


### Continuous Integration

* **renovate:** add custom manager for regex-based versioning in shell scripts ([#53](https://github.com/nobbs/gha-runner-image/issues/53)) ([4405df6](https://github.com/nobbs/gha-runner-image/commit/4405df6c923429142a990efa032daa567bb4a215))

## [0.1.0](https://github.com/nobbs/gha-runner-image/compare/v0.0.1...v0.1.0) (2025-07-03)


### Features

* add `helm` ([#15](https://github.com/nobbs/gha-runner-image/issues/15)) ([9d11868](https://github.com/nobbs/gha-runner-image/commit/9d11868c84a94f3b1afeceda61d83911c15349d4))
* **docker:** add compose plugin ([#47](https://github.com/nobbs/gha-runner-image/issues/47)) ([ceec4e7](https://github.com/nobbs/gha-runner-image/commit/ceec4e73104a07148c05b7faea0abb6476de5715))


### Bug Fixes

* **build:** add SHA to SARIF report upload step ([9d11868](https://github.com/nobbs/gha-runner-image/commit/9d11868c84a94f3b1afeceda61d83911c15349d4))
* **dockerfile:** streamline script execution and add checksum verification for kubectl and helm installations ([9d11868](https://github.com/nobbs/gha-runner-image/commit/9d11868c84a94f3b1afeceda61d83911c15349d4))
* **helm:** correct helm download URL format ([9d11868](https://github.com/nobbs/gha-runner-image/commit/9d11868c84a94f3b1afeceda61d83911c15349d4))


### Miscellaneous Chores

* add CODEOWNERS file to define code ownership ([6e627cc](https://github.com/nobbs/gha-runner-image/commit/6e627cc6cc7a5eb6839cfe7e0891c76a2f73b1df))
* apply suggestions from code review ([9d11868](https://github.com/nobbs/gha-runner-image/commit/9d11868c84a94f3b1afeceda61d83911c15349d4))
* **deps:** pin dependencies ([461dd17](https://github.com/nobbs/gha-runner-image/commit/461dd1709e473530b09d6e68cd9be5d67c3b5597))
* **deps:** update anchore/scan-action digest to be7a22d ([#17](https://github.com/nobbs/gha-runner-image/issues/17)) ([bcb248f](https://github.com/nobbs/gha-runner-image/commit/bcb248fb9746dce8a2450f646aa3ab74f020dd35))
* **deps:** update curlimages/curl docker tag to v8.14.1 ([#18](https://github.com/nobbs/gha-runner-image/issues/18)) ([ad2e568](https://github.com/nobbs/gha-runner-image/commit/ad2e568cc006333b1a67e1a3d313bf79c3561af0))
* **deps:** update dependency buildx to v0.25.0 ([#23](https://github.com/nobbs/gha-runner-image/issues/23)) ([e6247a0](https://github.com/nobbs/gha-runner-image/commit/e6247a0d31bc470275f08bd24d75749270016962))
* **deps:** update dependency docker to v28.3.0 ([#41](https://github.com/nobbs/gha-runner-image/issues/41)) ([a221db4](https://github.com/nobbs/gha-runner-image/commit/a221db457e9a15687f960432bacc3ad569293f0b))
* **deps:** update dependency docker to v28.3.1 ([#48](https://github.com/nobbs/gha-runner-image/issues/48)) ([83ee741](https://github.com/nobbs/gha-runner-image/commit/83ee74130601ccfcf18c8f47e42d14952d23b613))
* **deps:** update dependency helm to v3.18.3 ([#21](https://github.com/nobbs/gha-runner-image/issues/21)) ([6bf365a](https://github.com/nobbs/gha-runner-image/commit/6bf365a38d0069469d79cc1fdf36dbd991ecdd25))
* **deps:** update dependency kubectl to v1.32.6 ([#25](https://github.com/nobbs/gha-runner-image/issues/25)) ([5e3b609](https://github.com/nobbs/gha-runner-image/commit/5e3b609220d8541706ad7222dcce7a14b25f344c))
* **deps:** update docker/setup-buildx-action digest to 18ce135 ([#20](https://github.com/nobbs/gha-runner-image/issues/20)) ([c08b65f](https://github.com/nobbs/gha-runner-image/commit/c08b65fe204e344d7c975c57bb35fc0630d62600))
* **deps:** update ubuntu:24.04 docker digest to 440dcf6 ([#45](https://github.com/nobbs/gha-runner-image/issues/45)) ([208fd3d](https://github.com/nobbs/gha-runner-image/commit/208fd3dd83037b05a64435c8c1731301c5bbf417))
* **deps:** update ubuntu:24.04 docker digest to 89ef6e4 ([#44](https://github.com/nobbs/gha-runner-image/issues/44)) ([346d4fa](https://github.com/nobbs/gha-runner-image/commit/346d4fa522a29ca8e829e5f601b0f4e5692c81dc))


### Continuous Integration

* add concurrency settings to build and release workflows ([8a49204](https://github.com/nobbs/gha-runner-image/commit/8a4920414bcf631d764be319be3991c59a2ff65b))
* add scheduled workflow to get daily scan results ([#19](https://github.com/nobbs/gha-runner-image/issues/19)) ([f088f0f](https://github.com/nobbs/gha-runner-image/commit/f088f0f3045f95cdb229a55b2c69ee964977a5c3))
* **build:** ensure correct reference for SARIF report upload based on ref type ([9d11868](https://github.com/nobbs/gha-runner-image/commit/9d11868c84a94f3b1afeceda61d83911c15349d4))
* **deps:** update actions/checkout action to v4.2.2 ([87308cf](https://github.com/nobbs/gha-runner-image/commit/87308cf854e7002a574ede6bacacc892adbe24cd))
* **deps:** update actions/create-github-app-token action to v2.0.6 ([0e46422](https://github.com/nobbs/gha-runner-image/commit/0e46422c97c493d413c8053fffef484a82963b42))
* **deps:** update anchore/scan-action action to v6.3.0 ([e26fc4e](https://github.com/nobbs/gha-runner-image/commit/e26fc4efe41259b58f254fd8e8af9ce1a07d4c40))
* **deps:** update anchore/scan-action action to v6.4.0 ([#46](https://github.com/nobbs/gha-runner-image/issues/46)) ([7160008](https://github.com/nobbs/gha-runner-image/commit/7160008c5c54088590236b7907a14bbc8d770cac))
* **deps:** update docker/build-push-action action to v6.18.0 ([cf31d0d](https://github.com/nobbs/gha-runner-image/commit/cf31d0dfbd8b55012b8c6918791ebe1d418b0916))
* **deps:** update docker/login-action action to v3.4.0 ([ddb0cb3](https://github.com/nobbs/gha-runner-image/commit/ddb0cb304e3f52e88284d3b399a3bfec80d15313))
* **deps:** update docker/metadata-action action to v5.7.0 ([aa02ac7](https://github.com/nobbs/gha-runner-image/commit/aa02ac773dcd20a5170742ee323f7b0c8bb08700))
* **deps:** update docker/setup-buildx-action action to v3.11.1 ([4265511](https://github.com/nobbs/gha-runner-image/commit/42655118f331acc4ea3ca8fa667455ad7edea244))
* **deps:** update docker/setup-buildx-action digest to e468171 ([#24](https://github.com/nobbs/gha-runner-image/issues/24)) ([63e8ad7](https://github.com/nobbs/gha-runner-image/commit/63e8ad7a981113ef5b7e15cbc001e33760a13add))
* **deps:** update github/codeql-action action to v3.29.0 ([6fd898a](https://github.com/nobbs/gha-runner-image/commit/6fd898af66094cdca8624a9f072b8a2f221e20b6))
* **deps:** update github/codeql-action action to v3.29.1 ([#42](https://github.com/nobbs/gha-runner-image/issues/42)) ([bcd2f9a](https://github.com/nobbs/gha-runner-image/commit/bcd2f9aac07b8f70e23a1f54a43958bd36dfc1bf))
* **deps:** update github/codeql-action action to v3.29.2 ([#43](https://github.com/nobbs/gha-runner-image/issues/43)) ([b9d705e](https://github.com/nobbs/gha-runner-image/commit/b9d705ecf0e2fb7dd431871d08c38f79a2aeba50))
* **deps:** update googleapis/release-please-action action to v4.2.0 ([ba190da](https://github.com/nobbs/gha-runner-image/commit/ba190daa67ae3f78c052ec6c77aec31440508276))
* update permissions to allow security events in workflow ([#22](https://github.com/nobbs/gha-runner-image/issues/22)) ([ec60fb5](https://github.com/nobbs/gha-runner-image/commit/ec60fb5120f291a84c8da05383d5916e81a96fbc))
* update renovate configuration to pin GitHub Action digests to semver and docker images ([c92376d](https://github.com/nobbs/gha-runner-image/commit/c92376d30db34530d520de3fa1d288733d3f421b))

## 0.0.1 (2025-06-12)


### Features

* add `kubectl` ([#5](https://github.com/nobbs/gha-runner-image/issues/5)) ([f06f092](https://github.com/nobbs/gha-runner-image/commit/f06f0921eb22de4aa9403ded4615cf1f8c0adbb6))


### Bug Fixes

* ensure checkout step is included in release-please workflow ([d719220](https://github.com/nobbs/gha-runner-image/commit/d7192209d30cc63d4e73577b4ac4ac11f2595f3c))


### Miscellaneous Chores

* add .editorconfig for consistent coding style ([6e6459a](https://github.com/nobbs/gha-runner-image/commit/6e6459a8342d6fdff155085217417e2999782a20))
* **deps:** pin dependencies ([#7](https://github.com/nobbs/gha-runner-image/issues/7)) ([b885233](https://github.com/nobbs/gha-runner-image/commit/b885233442972a491432e27ea13b64ca8f5969d8))
* **deps:** pin dependencies ([#9](https://github.com/nobbs/gha-runner-image/issues/9)) ([47bea30](https://github.com/nobbs/gha-runner-image/commit/47bea306550d18625a152a86332647eb168fe702))
* **deps:** update curlimages/curl docker tag to v8.13.0 ([#13](https://github.com/nobbs/gha-runner-image/issues/13)) ([a0de5e1](https://github.com/nobbs/gha-runner-image/commit/a0de5e1b05405f89776999e727a761de3b37070a))


### Continuous Integration

* add GitHub Actions workflow for building and pushing runner image ([#8](https://github.com/nobbs/gha-runner-image/issues/8)) ([2769e7a](https://github.com/nobbs/gha-runner-image/commit/2769e7a671b0354066158fef13d6f0152bfca773))
* add release-please configuration files for automated releases ([#3](https://github.com/nobbs/gha-runner-image/issues/3)) ([d719220](https://github.com/nobbs/gha-runner-image/commit/d7192209d30cc63d4e73577b4ac4ac11f2595f3c))
* add renovate configuration for dependency management ([#1](https://github.com/nobbs/gha-runner-image/issues/1)) ([e9c3568](https://github.com/nobbs/gha-runner-image/commit/e9c3568df02a73352bc8e3bd35701a6054d7914f))
* enhance Docker build step with annotations and fixed labels ([#12](https://github.com/nobbs/gha-runner-image/issues/12)) ([a464a8e](https://github.com/nobbs/gha-runner-image/commit/a464a8e69c882d1b42c1feaba926fffe2bb679d6))
* include CHANGELOG.md in build workflow trigger paths for PRs ([#10](https://github.com/nobbs/gha-runner-image/issues/10)) ([2562fee](https://github.com/nobbs/gha-runner-image/commit/2562feeb419404291d0e9bdd1b926ee82606e3b6))
* include CHANGELOG.md in build workflow trigger paths for pull requests ([2562fee](https://github.com/nobbs/gha-runner-image/commit/2562feeb419404291d0e9bdd1b926ee82606e3b6))
* update build workflow to trigger on release-please managed PRs via CHANGELOG.md ([2562fee](https://github.com/nobbs/gha-runner-image/commit/2562feeb419404291d0e9bdd1b926ee82606e3b6))
* update image repository path in Docker metadata action ([#11](https://github.com/nobbs/gha-runner-image/issues/11)) ([1b59c3f](https://github.com/nobbs/gha-runner-image/commit/1b59c3f3ae5b1da4a1dcd002c1405e2a94dc2102))
* update renovate configuration to include GitHub Action digest pinning ([#6](https://github.com/nobbs/gha-runner-image/issues/6)) ([cd83676](https://github.com/nobbs/gha-runner-image/commit/cd836766015e84e4570675f08b0857508f8574ee))
