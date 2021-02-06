#priority 2000
#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.ResourceLocation;
import mods.contenttweaker.Color;
import scripts.hds_lib.cotlib.plainItemIDs;
import scripts.grassUtils.CotUtils;

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

var arl = VanillaFactory.createItem("astral_lens");
arl.maxStackSize = 16;
arl.register();

for id in plainItemIDs {
    CotUtils.addNormalItem(id);
}