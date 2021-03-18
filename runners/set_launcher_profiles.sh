#!/bin/sh -x

filePath="${GITHUB_WORKSPACE}/gml/.minecraft/launcher_profiles.json"
echo "{\"selectedProfile\": \"(Default)\",\"profiles\": {\"(Default)\": {\"name\": \"(Default)\"}},\"clientToken\": \"88888888-8888-8888-8888-888888888888\"}" > ${filePath}
