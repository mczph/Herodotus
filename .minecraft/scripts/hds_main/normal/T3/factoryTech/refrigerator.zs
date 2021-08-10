#packmode normal
#priority -1

import mods.factorytech.Refrigerator;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){

Refrigerator.addRecipe(<contenttweaker:culture_medium>, <liquid:taint_nutrition>*500, false);
}
