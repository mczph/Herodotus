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
events.onCommand(function(event as CommandEvent){//disable the "/ct" command by cancelling the command event
   val sender as ICommandSender = event.commandSender;
   if (!event.commandSender.world.remote && event.command.name == "ct" ) {
       event.cancel();
       sender.sendMessage("呐呐, 不可以使用这个指令的哦（；´д｀）ゞ");
   }
});
events.onPlayerTick(function(event as PlayerTickEvent) {//send the tips
    val player as IPlayer = event.player;
    val world as IWorld = player.world;
    if (world.time % 100 == 0) {
        player.sendMessage("------------------------------------------------------------------");
        player.sendMessage("        呐·呐·呐米娜桑 (≧∇≦)ﾉ感谢游玩bokuwano☆H☆D☆S☆哒!        ");
        player.sendMessage("          嘛嘛，先来和米娜桑介绍一下♡卡♡哇伊♡的瓦达西(舔嘴)          ");
        player.sendMessage("            瓦达西，可是傲娇的「HDS吉祥物」哟(。・`ω´・)             ");
        player.sendMessage("        那些污秽の「影响游戏平衡性的MOD」什么的、最·讨·厌·了★♪       ");
        player.sendMessage("              八嘎是不会懂的呀……关于「平衡の美好」♡呐!               ");
        player.sendMessage("      桥豆麻袋!(っ °Д °;)っ这个......这个不会影响米娜桑继续游戏desu!  ");
        player.sendMessage(" 呜......呜呜......(哭啼啼) 只是......只是会失去技·术·支·持而已(._.`) ");
        player.sendMessage("      如果......如果kimiwa可以「抹」「杀」「掉」那些「咸·鱼·模·组」    ");
        player.sendMessage("         就可以「夺」「回」完整的☆技术支持☆和★游戏流程★哟~          ");
        player.sendMessage("           能乖乖游玩HDS的kimiwa，瓦达西♡呆♡死♡ki♡得♡斯♡            ");
        player.sendMessage("      kimiwa的☆存档☆，瓦达西也会好好的保·存·起·来呦!( •̀ ω •́ )✧      ");
        player.sendMessage("          因为害怕kimiwaの遗忘，瓦达西每·tick·都会「提醒」呦!         ");
        player.sendMessage("            最后的最后捏，游戏愉快呢♡喵♪(由乃逆光捧脸.jpg)            ");
        player.sendMessage("        瓦达西会♡紫都♡紫都♡ 一宿你 和·你·在·一·起的!(●'◡'●)          ");
}});
}
