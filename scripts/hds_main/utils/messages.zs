#priority 1145140
import crafttweaker.world.IWorld;
import crafttweaker.player.IPlayer;
import crafttweaker.event.CommandEvent;
import crafttweaker.events.IEventManager;
import crafttweaker.event.PlayerTickEvent;
import scripts.hds_main.utils.modloader.isInvalid;

if(isInvalid == true){
val player as IPlayer = event.player;
val world as IWorld = player.world;
events.onCommand(function(event as CommandEvent){
   if (!event.commandSender.world.remote && event.command.name == "gamemode" 
       && (event.parameters in "1" || event.parameters in "creative")) {
       event.cancel();
       player.sendChat("呐呐, 不可以使用这个指令的哦（；´д｀）ゞ");
   }
});
events.onCommand(function(event as CommandEvent){
   if (!event.commandSender.world.remote && event.command.name == "give" ) {
       event.cancel();
       player.sendChat("呐呐, 不可以使用这个指令的哦（；´д｀）ゞ");
   }
});
events.onPlayerTick(function(event as PlayerTickEvent) {
    if (world.time % 100 == 0) {
        player.sendChat("------------------------------------------------------------------");
        player.sendChat("         (≧∇≦)ﾉ米娜桑, 我是本整合包'提醒删咸鱼MOD小助手'哟");
        player.sendChat("    这边是检测到您添加了一些可能会影响游戏平衡性的MOD呢*~(￣▽￣)~*");
        player.sendChat("        不过不要担心啦, 您还是可以继续进行游戏的哦o(*￣▽￣*)ブ");
        player.sendChat(" 但是如果在游玩中出现任何问题, 可是不会获得任何技术支持的哟( ´･･)ﾉ(._.`)");
        player.sendChat("或者您可以删除掉您加入的MOD, 并继续享受完整游戏流程和技术支持(～￣▽￣)～");
        player.sendChat("           不用担心啦, 存档的话咱会帮你存好的咯( •̀ ω •́ )✧");
        player.sendChat(" 最后由于怕您忘记, 我将每 1tick 就发送一段消息提醒您哦φ(゜▽゜*)♪");
        player.sendChat("                  最后的最后, 祝您游戏愉快哟(●'◡'●)");
        player.sendChat("------------------------------------------------------------------");
}});
}