@echo off

set MIN_RAM=4000M
set MAX_RAM=6000M
set SERVER_JAR=forge-1.12.2-14.23.5.2860.jar

title "Herodotus"

:start_server
echo Starting Herodotus Server...
java -server -Xms%MIN_RAM% -Xmx%MAX_RAM% -jar %SERVER_JAR% nogui

goto start_server
