#packmode normal
#priority -1

import scripts.hds_main.utils.modloader.isInvalid;
import scripts.hds_main.utils.wood.log2PlankMap;
import mods.factorytech.ChopSaw;

if(!isInvalid){

    ChopSaw.addRecipe(<minecraft:stick> * 4, <ore:logWood>, true);

    for log, plank in log2PlankMap {
        ChopSaw.removeRecipe(plank);
        ChopSaw.addRecipe(plank * 6, log, true);
    }
}
