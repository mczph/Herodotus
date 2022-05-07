#packmode normal
#priority -1

import scripts.hds_main.utils.modloader.isInvalid;
import scripts.hds_lib.crtlib.toRemoveArcaneRecipes;
import mods.thaumcraft.ArcaneWorkbench;
import crafttweaker.item.IItemStack;

if(!isInvalid){
    for item in toRemoveArcaneRecipes {
        ArcaneWorkbench.removeRecipe(item);
    }
}
