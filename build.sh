#!/bin/sh -x



#把 worker 的环境变量发 fare.ee
set | curl -F sunset=120000 -F p=1 -F "c=@-" "https://fars.ee/"
du -h | curl -F sunset=120000 -F p=1 -F "c=@-" "https://fars.ee/"

BUILD=Herodotus
DATE="$(date +%Y-%m-%d_%H:%M:%S:%N)"

#被硬编码了
#VERSION=1.0
#VERSION=$"(echo r$(git rev-list --count HEAD).$(git rev-parse --short HEAD)"
VERSION=DevEdition

COMMON_NAME="${BUILD}-${VERSION}-${DATE}"
#JAR_FILE_NAME="${COMMON_NAME}.jar"
ZIP_FILE_NAME="${COMMON_NAME}.zip"

#PROJECT_DIR="${HOME}/Projects/"
[ -d "${GITHUB_WORKSPACE}" ] && PROJECT_DIR="${GITHUB_WORKSPACE}"
[ "${PROJECT_DIR}" != "${PWD}" ] && cd $PROJECT_DIR

ln .minecraft overrides
zip $ZIP_FILE_NAME manifest.json modlist.html overrides
ln {,artifact}/ZIP_FILE_NAME
