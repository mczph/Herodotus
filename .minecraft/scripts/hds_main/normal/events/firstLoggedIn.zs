##packmode normal
#priority -1

import crafttweaker.data.IData;
import crafttweaker.player.IPlayer;
import crafttweaker.server.IServer;

import crafttweaker.event.PlayerLoggedInEvent;

events.onPlayerLoggedIn(function(event as PlayerLoggedInEvent) {
    var player as IPlayer = event.player;
    var playerName as string = player.name;
    var data as IData = player.data.PlayerPersisted;

    if(isNull(data) || isNull(data.loggedIn)) {
        player.sendChat("1");
        player.update({PlayerPersisted : {loggedIn : true as bool}});
        runCommand("tc research " + playerName + " all");
        runCommand("tc warp" + playerName + " set 0 PERM");
        runCommand("tc warp" + playerName + " set 0 TEMP");
        runCommand("clear " + playerName);
    }
});


function runCommand(command as string) {
    server.commandManager.executeCommand(server, command);
}