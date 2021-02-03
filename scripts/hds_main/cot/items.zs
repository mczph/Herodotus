#priority 2000
#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.ResourceLocation;
import mods.contenttweaker.Color;
import scripts.hds_lib.cotlib.plainItemIDs;
import scripts.grassUtils.CotUtils;

var ccast = VanillaFactory.createItem("copper_cast");
ccast.maxStackSize = 1;
ccast.register();

var cfn = VanillaFactory.createItem("cast_four_nuggets");
cfn.maxStackSize = 1;
cfn.register();

var scn = VanillaFactory.createItem("copper_nugget_cast");
scn.maxStackSize = 1;
scn.register();

var cgc = VanillaFactory.createItem("copper_gear_cast");
cgc.maxStackSize = 1;
cgc.register();

var sandpaper = VanillaFactory.createItem("sandpaper");
sandpaper.maxStackSize = 1;
sandpaper.maxDamage = 64;
sandpaper.register();

var brass = VanillaFactory.createItem("brass_dust");
brass.textureLocation = ResourceLocation.create("base:items/dust");
brass.itemColorSupplier = function(item, tintIndex) {
    return Color.fromInt(0xDCD83E);
};
brass.register();

for id in plainItemIDs {
    CotUtils.addNormalItem(id);
}