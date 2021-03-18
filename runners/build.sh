#!/bin/sh -x

#JAR_FILE_NAME="${COMMON_NAME}.jar"
ZIP_FILE_NAME="${BUILD}-${VERSION}-build${GITHUB_RUN_NUMBER}.zip"
#PROJECT_DIR="${HOME}/Projects/example"

[ -d "${GITHUB_WORKSPACE}" ] && PROJECT_DIR="${GITHUB_WORKSPACE}"
[ "${PROJECT_DIR}" != "${PWD}" ] && cd "${PROJECT_DIR}"


mv .minecraft overrides
zip -r "${ZIP_FILE_NAME}" -xi manifest.json modlist.html overrides
mv {,artifacts/}${ZIP_FILE_NAME}
