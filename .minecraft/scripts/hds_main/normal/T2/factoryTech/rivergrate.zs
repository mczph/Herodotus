#packmode normal
#priority -1

import mods.factorytech.rivergrate;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){
rivergrate.removeRecipe(<factorytech:ore_dust:16>);
rivergrate.removeRecipe(<factorytech:ore_dust:15>);
rivergrate.removeRecipe(<factorytech:ore_dust:17>);

rivergrate.addRecipe(<contenttweaker:wood_feather_crystal>, 0.1);
}
