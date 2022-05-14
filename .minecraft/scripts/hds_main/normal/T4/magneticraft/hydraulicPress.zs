#packmode normal
#priority 0

import crafttweaker.item.IItemStack;
import mods.magneticraft.HydraulicPress;
import scripts.hds_lib.crtlib;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid) {
    for i, lColor in crtlib.latinColors {
        val ars as string = "contenttweaker:aspect_reaction_vessel";
        HydraulicPress.addRecipe(crtlib.tcPhialGetter(lColor ~ "_" ~ crtlib.latinShapes[i], 50),
            itemUtils.getItem(ars ~ "_" ~ crtlib.colors[i] ~ "_" ~ crtlib.shapes[i]),
            20 * 20, 0, true
        );
    }
}
