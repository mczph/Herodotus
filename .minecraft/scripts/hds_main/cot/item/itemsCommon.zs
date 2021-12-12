#priority 2000
#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.ResourceLocation;
import mods.contenttweaker.Color;
import scripts.hds_lib.cotlib.plainItemIDs;
import scripts.grassUtils.CotUtils;

var solderer = VanillaFactory.createItem("hot_air_solderer");
solderer.maxStackSize = 1;
solderer.maxDamage = 32000;
solderer.register();

var brass = VanillaFactory.createItem("brass_dust");
brass.textureLocation = ResourceLocation.create("base:items/dust");
brass.itemColorSupplier = function(item, tintIndex) {
    return Color.fromInt(0xDCD83E);
};
brass.register();

var oe = VanillaFactory.createItem("omni_essential");
oe.textureLocation = ResourceLocation.create("base:items/dust");
oe.itemColorSupplier = function(item, tintIndex) {
    return Color.fromInt(0x7F2CA6);
};
oe.register();

var arl = VanillaFactory.createItem("astral_lens");
arl.maxStackSize = 16;
arl.register();

for id in plainItemIDs {
    CotUtils.addNormalItem(id);
}
