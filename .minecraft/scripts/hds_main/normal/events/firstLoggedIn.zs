##packmode normal
#priority -1
#loader crafttweaker reloadableevents

import crafttweaker.data.IData;
import crafttweaker.player.IPlayer;
import crafttweaker.server.IServer;
import mods.zenutils.DelayManager;

import crafttweaker.event.PlayerLoggedInEvent;

events.onPlayerLoggedIn(function(event as PlayerLoggedInEvent) {
    var player as IPlayer = event.player;
    var playerName as string = player.name;
    var data as IData = player.data.PlayerPersisted;

    if(isNull(data) || isNull(data.loggedIn)) {
        player.update({PlayerPersisted : {loggedIn : true as bool}});
        runCommand("tc research " + playerName + " all");
        runCommand("clear " + playerName);
        DelayManager.addDelayWork(function() {
            player.warpNormal = 0;
            player.warpTemporary = 0;
            player.warpPermanent = 0;
        }, 2 * 20);
    }
});


function runCommand(command as string) {
    server.commandManager.executeCommand(server, command);
}