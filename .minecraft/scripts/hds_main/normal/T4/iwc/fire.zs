#packmode normal
#priority 0

import crafttweaker.item.IItemStack;
import mods.inworldcrafting.FireCrafting;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid) {
    FireCrafting.addRecipe(<contenttweaker:primordial_pearl_dust> * 3, <contenttweaker:filtered_enchanted_fabric>, 20 * 20);
}
