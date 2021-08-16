#priority -1

import mods.zenutils.command.ZenCommand;
import mods.zenutils.command.IGetTabCompletion;
import mods.zenutils.StringList;
import mods.zenutils.command.CommandUtils;
import crafttweaker.data.IData;
import mods.hdsutils.ITaint;

val command as ZenCommand = ZenCommand.create("taint");
command.getCommandUsage = function(sender) {
    return "hdsutils.commands.taint_command_usage";
};
command.tabCompletionGetters = [IGetTabCompletion.player(), IGetTabCompletion.empty(), function(server, player, pos) {
    return StringList.create(["infected", "sticky", "permanent"]);
}];
command.execute = function(command, server, sender, args) {
    if (args.length != 3) {
        CommandUtils.notifyWrongUsage(command, sender);
    }
    val taint as ITaint = CommandUtils.getPlayer(server, sender, args[0]).taint;
    val amount as int = (args[1] as IData).asInt();
    val type as string = args[2];
    if (type.equalsIgnoreCase("infected")) {
        taint.addInfectedTaint(amount);
    } else if (type.equalsIgnoreCase("sticky")) {
        taint.addStickyTaint(amount);
    } else if (type.equalsIgnoreCase("permanent")) {
        taint.addPermanentTaint(amount);
    }
};
command.register();
