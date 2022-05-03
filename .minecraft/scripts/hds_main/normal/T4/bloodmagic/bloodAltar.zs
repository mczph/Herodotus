#packmode normal
#priority -1

import scripts.hds_main.utils.modloader.isInvalid;
import mods.bloodmagic.BloodAltar;

if (!isInvalid) {
    //BloodAltar.addRecipe(IItemStack output, IItemStack input, int minimumTier, int syphon, int consumeRate, int drainRate);
    BloodAltar.addRecipe(<botania:livingrock>, <bloodmagic:blood_rune>, 1, 1000, 50, 500);

}
