#packmode normal expert
#modloaded bathappymod
#loader contenttweaker
#priority 1000

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;

var fcoke = VanillaFactory.createFluid("coke", Color.fromHex("941B08"));
fcoke.rarity = "EPIC";
fcoke.register();