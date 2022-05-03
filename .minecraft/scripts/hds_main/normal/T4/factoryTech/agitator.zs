#packmode normal
#priority 0

import crafttweaker.item.IItemStack;
import mods.factorytech.Agitator;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid) {
    Agitator.addRecipe(<liquid:lubricant> * 1000, <liquid:iron> * 576, <thaumcraft:primordial_pearl>, <fluid:primordial_pearl_mix> * 1000);
    Agitator.addRecipe(<fluid:primordial_pearl_mix> * 1000, null, <thaumcraft:fabric>, null, <contenttweaker:filtered_enchanted_fabric>);
    Agitator.addRecipe(<liquid:unstable_aura> * 1000, null, <contenttweaker:primordial_pearl_dust>, <liquid:fluid_mana> * 1000, null);
}
