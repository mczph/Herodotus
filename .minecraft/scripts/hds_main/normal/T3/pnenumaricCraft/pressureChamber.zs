#packmode normal
#priority -1

import mods.pneumaticcraft.pressurechamber;
import scripts.hds_main.utils.modloader.isInvalid;

if (!isInvalid) {
    pressurechamber.addRecipe([<contenttweaker:active_rune>], 2.2, [<bloodmagic:blood_rune>]);
}