#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.magneticraft.Refinery;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){
    Refinery.removeRecipe(<liquid:hot_crude>);
    Refinery.removeRecipe(<liquid:steam>);

    Refinery.addRecipe(<liquid:hot_crude> * 10, <liquid:heavy_oil> * 4, <liquid:light_oil> * 3, <liquid:lpg> * 2, 10);
    Refinery.addRecipe(<liquid:steam> * 10, <liquid:distilledwater>, null, null, 2);
}