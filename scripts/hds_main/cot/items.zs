#priority 2000
#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;

var ccast = VanillaFactory.createItem("copper_cast");
ccast.maxStackSize = 1;
ccast.register();

var cfn = VanillaFactory.createItem("cast_four_nuggets");
cfn.maxStackSize = 1;
cfn.register();//TODO replace this with single copper nugget cast and texture