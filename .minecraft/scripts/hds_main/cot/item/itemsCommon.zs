#priority 2000
#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.ResourceLocation;
import mods.contenttweaker.Color;
import scripts.hds_lib.cotlib.plainItemIDs;
import scripts.grassUtils.CotUtils;

var nuggetCinnabar = VanillaFactory.createItem("cinnabar_nugget");
nuggetCinnabar.textureLocation = ResourceLocation.create("base:items/nugget");
nuggetCinnabar.itemColorSupplier = function(item, tintIndex) {
    return Color.fromInt(0x8D2F26);
};
nuggetCinnabar.register();

var bioactiveCinnabar = VanillaFactory.createItem("cinnabar_bioactive");
bioactiveCinnabar.textureLocation = ResourceLocation.create("contenttweaker:items/bioactive");
bioactiveCinnabar.itemColorSupplier = function(item, tintIndex) {
    return Color.fromInt(0x8D2F26);
};
bioactiveCinnabar.register();

var rockQuartzite = VanillaFactory.createItem("quartzite");
rockQuartzite.textureLocation = ResourceLocation.create("base:items/ore_rock");
rockQuartzite.itemColorSupplier = function(item, tintIndex) {
    if (tintIndex == 1) {
        return Color.fromInt(0x3C3C3C);
    } else return Color.fromInt(0xFFFFFF);
};
rockQuartzite.register();

var clusterQuartzite = VanillaFactory.createItem("quartzite_cluster");
clusterQuartzite.textureLocation = ResourceLocation.create("base:items/cluster");
clusterQuartzite.itemColorSupplier = function(item, tintIndex) {
    if (tintIndex == 1) {
        return Color.fromInt(0x3C3C3C);
    } else return Color.fromInt(0xFFFFFF);
};
clusterQuartzite.register();

var bioactiveQuartzite = VanillaFactory.createItem("quartzite_bioactive");
bioactiveQuartzite.textureLocation = ResourceLocation.create("contenttweaker:items/bioactive");
bioactiveQuartzite.itemColorSupplier = function(item, tintIndex) {
    return Color.fromInt(0x3C3C3C);
};
bioactiveQuartzite.register();

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

var oetd = VanillaFactory.createItem("omni_essential_tiny_dust");
oetd.textureLocation = ResourceLocation.create("base:items/tiny_dust");
oetd.itemColorSupplier = function(item, tintIndex) {
    return Color.fromInt(0x7F2CA6);
};
oetd.register();

var arl = VanillaFactory.createItem("astral_lens");
arl.maxStackSize = 16;
arl.register();

var seed = VanillaFactory.createItem("basic_vis_seed");
seed.textureLocation = ResourceLocation.create("thaumadditions:items/vis_seeds_0");
seed.register();

for id in plainItemIDs {
    CotUtils.addNormalItem(id);
}
