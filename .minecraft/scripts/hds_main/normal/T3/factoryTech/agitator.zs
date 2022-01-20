#packmode normal
#priority -1

import mods.factorytech.Agitator;
import scripts.hds_main.utils.modloader.isInvalid;

if (!isInvalid) {
    Agitator.addRecipe(<liquid:lifeessence> * 250, null, <contenttweaker:culture_medium>, null, <contenttweaker:resurrected_meat>);
    Agitator.addRecipe(<liquid:lifeessence> * 4000, <liquid:taint_nutrition> * 50, <contenttweaker:biological_resources> * 4, <liquid:lifeessence> * 4000, <contenttweaker:flesh_bolus>);
    Agitator.addRecipe(<liquid:water> * 1000, null, <thaumcraft:condenser_lattice_dirty>, <liquid:flux_goo> * 1000, <thaumcraft:condenser_lattice>);
}