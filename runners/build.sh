#!/bin/sh -x

ZIP_FILE_NAME="${BUILD}-${VERSION}.${GITHUB_RUN_NUMBER}.zip"

[ -d "${GITHUB_WORKSPACE}" ] && PROJECT_DIR="${GITHUB_WORKSPACE}"
[ "${PROJECT_DIR}" != "${PWD}" ] && cd "${PROJECT_DIR}"


mv .minecraft overrides
zip -r "${ZIP_FILE_NAME}" -xi manifest.json modlist.html overrides
mv {,artifacts/}${ZIP_FILE_NAME}
