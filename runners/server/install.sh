#!/bin/sh

export INSTALL_JAR= "forge-1.12.2-14.23.5.2860-installer.jar"

echo "Installing Forge."
java -jar ${INSTALL_JAR} --installServer > /dev/null 2>&1
echo "Done!"
