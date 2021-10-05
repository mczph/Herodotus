#priority 2000
#loader contenttweaker

import mods.contenttweaker.VanillaFactory;

val item = VanillaFactory.createBaubleItem("void_traveler_amulet");
item.maxDamage = 1200;
item.baubleType = "AMULET";
item.register();
