#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.magneticraft.Refinery;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){
Refinery.removeRecipe(<liquid:steam>);
Refinery.removeRecipe(<liquid:hot_crude>);

Refinery.addRecipe(<liquid:steam> * 10, <liquid:distilledwater>, null, null, 2);
}
