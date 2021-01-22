#priority 1145140
import crafttweaker.world.IWorld;
import crafttweaker.player.IPlayer;
import crafttweaker.event.CommandEvent;
import crafttweaker.events.IEventManager;
import crafttweaker.event.PlayerTickEvent;
import crafttweaker.command.ICommandSender;
import scripts.hds_main.utils.modloader.isInvalid;

if(isInvalid == true){
events.onCommand(function(event as CommandEvent){//disable the "/gamemode creative(1)" command by cancelling the command event
   val sender as ICommandSender = event.commandSender;
   if (!event.commandSender.world.remote && event.command.name == "gamemode" 
       && (event.parameters in "1" || event.parameters in "creative")) {
       event.cancel();
       sender.sendMessage("呐呐, 不可以使用这个指令的哦（；´д｀）ゞ");
   }
});
events.onCommand(function(event as CommandEvent){//disable the "/give" command by cancelling the command event
   val sender as ICommandSender = event.commandSender;
   if (!event.commandSender.world.remote && event.command.name == "give" ) {
       event.cancel();
       sender.sendMessage("呐呐, 不可以使用这个指令的哦（；´д｀）ゞ");
   }
});
events.onPlayerTick(function(event as PlayerTickEvent) {//send the tips
    val player as IPlayer = event.player;
    val world as IWorld = player.world;
    if (world.time % 100 == 0) {
        player.sendMessage("------------------------------------------------------------------");
        player.sendMessage("         (≧∇≦)ﾉ米娜桑, 我是本整合包'提醒删咸鱼MOD小助手'哟");
        player.sendMessage("    这边是检测到您添加了一些可能会影响游戏平衡性的MOD呢*~(￣▽￣)~*");
        player.sendMessage("        不过不要担心啦, 您还是可以继续进行游戏的哦o(*￣▽￣*)ブ");
        player.sendMessage(" 但是如果在游玩中出现任何问题, 可是不会获得任何技术支持的哟( ´･･)ﾉ(._.`)");
        player.sendMessage("或者您可以删除掉您加入的MOD, 并继续享受完整游戏流程和技术支持(～￣▽￣)～");
        player.sendMessage("           不用担心啦, 存档的话咱会帮你存好的咯( •̀ ω •́ )✧");
        player.sendMessage(" 最后由于怕您忘记, 我将每 1tick 就发送一段消息提醒您哦φ(゜▽゜*)♪");
        player.sendMessage("                  最后的最后, 祝您游戏愉快哟(●'◡'●)");
        player.sendMessage("------------------------------------------------------------------");
}});
}