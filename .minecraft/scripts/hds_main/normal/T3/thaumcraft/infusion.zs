#packmode normal
#priority -1

import scripts.hds_main.utils.modloader.isInvalid;
import mods.thaumcraft.Infusion;

if (!isInvalid) {
    Infusion.removeRecipe(<thaumadditions:aspect_combiner>);
}