#packmode normal
#priority -1

import scripts.hds_main.utils.modloader.isInvalid;
import mods.botania.ManaInfusion;

if (!isInvalid) {
    ManaInfusion.addInfusion(<hdsutils:mana_catalyst>, <thaumcraft:metal_alchemical>, 100);
}
