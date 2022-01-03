#packmode normal
#priority 0

import crafttweaker.item.IItemStack;
import mods.chisel.Carving;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid) {

Carving.addGroup("alchemy_tunnels");
Carving.addVariation("alchemy_tunnels", <hdsutils:vertical_right_angle>);
Carving.addVariation("alchemy_tunnels", <hdsutils:right_angle_tunnel>);
Carving.addVariation("alchemy_tunnels", <hdsutils:straight_tunnel>);
}

