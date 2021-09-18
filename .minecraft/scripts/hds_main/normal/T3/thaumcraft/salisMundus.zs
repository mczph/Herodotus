#packmode normal
#priority -1

import scripts.hds_main.utils.modloader.isInvalid;
import mods.thaumcraft.SalisMundus;
import crafttweaker.item.IItemStack;

if(!isInvalid){

SalisMundus.removeSingleConversion(<thaumcraft:thaumonomicon>);

SalisMundus.addSingleConversion(<ore:logWood>, <thaumcraft:log_greatwood>);
}
