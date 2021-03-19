#packmode normal
#priority 0

import crafttweaker.item.IItemStack;
import mods.chisel.Carving;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid) {

Carving.removeGroup("marble");
Carving.removeGroup("sooty_marble");
}