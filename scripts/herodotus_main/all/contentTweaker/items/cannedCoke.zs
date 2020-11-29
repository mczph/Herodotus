#packmode normal expert
#modloaded bathappymod
#loader contenttweaker
#priority 1000

import mods.contenttweaker.Item;
import mods.contenttweaker.ItemFood;
import mods.contenttweaker.VanillaFactory;

var ccoke = VanillaFactory.createItemFood("canned_coke", 40);
ccoke.saturation = 10;
ccoke.maxStackSize = 6;
ccoke.alwaysEdible = true;
ccoke.itemUseAction = "DRINK";
ccoke.register();