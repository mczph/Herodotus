#packmode normal
#priority -1

import scripts.hds_main.utils.modloader.isInvalid;
import mods.bloodmagic.BloodAltar;

if (!isInvalid) {
    BloodAltar.addRecipe(<tconstruct:pattern>, <pyrotech:material:20>, 0, 500, 5, 5);
}