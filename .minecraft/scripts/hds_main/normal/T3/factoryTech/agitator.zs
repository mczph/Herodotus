#packmode normal
#priority -1

import mods.factorytech.Agitator;
import scripts.hds_main.utils.modloader.isInvalid;

if (!isInvalid) {
    Agitator.addRecipe(<liquid:lifeessence> * 250, null, <contenttweaker:culture_medium>, null, <contenttweaker:resurrected_meat>);
}