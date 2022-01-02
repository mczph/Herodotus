@echo off

set INSTALL_JAR=forge-1.12.2-14.23.5.2860-installer.jar

:install_files
echo Installing Forge.
java -jar %INSTALL_JAR% --installServer > NUL 2>&1
echo Done!
