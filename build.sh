#!/bin/sh -x

exec 2>&1

BUILD=Herodotus
DATE="$(date +%Y-%m-%d_%H:%M:%S:%N)"
#VERSION=1.0
#VERSION=$"(echo r$(git rev-list --count HEAD).$(git rev-parse --short HEAD)"
VERSION=DevEdition #被硬编码了
COMMON_NAME="${BUILD}-${VERSION}-${DATE}"
#JAR_FILE_NAME="${COMMON_NAME}.jar"
ZIP_FILE_NAME="${COMMON_NAME}.zip"
#PROJECT_DIR="${HOME}/Projects/example"

[ -d "${GITHUB_WORKSPACE}" ] && PROJECT_DIR="${GITHUB_WORKSPACE}"
[ "${PROJECT_DIR}" != "${PWD}" ] && cd "${PROJECT_DIR}"


ln .minecraft overrides
zip "${ZIP_FILE_NAME}" manifest.json modlist.html overrides
ln {,artifact}/${ZIP_FILE_NAME}
