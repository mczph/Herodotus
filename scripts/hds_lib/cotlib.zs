#priority 2001
#loader contenttweaker

import scripts.grassUtils.CotUtils;
import scripts.grassUtils.classes.MaterialSystemHelper.MaterialSystemHelper;

//registerPart
val registerPartsArray as string[] = [
    "rhombus", "spherical", "square"
];
val register as MaterialSystemHelper = CotUtils.getMaterialSystemHelper("registerPart");
    for name in registerPartsArray{
        register.registerNormalPart(name, "item", false);
}


//PartsArrays
static allPartsArray as string[] = [
    "nugget", "beam", "dirty_dust", "cluster", "ring",
    "rod", "crystal", "plate", "chipped_gem", "centrifuged_ore",
    "rock", "ore_rock", "casing", "missing", "dense_plate",
    "block", "shard", "molten", "flawless_gem", "dust",
    "crushed_ore", "ore", "small_dust", "long_rod", "small_spring",
    "clump", "flawed_gem", "large_spring", "purified_ore", "poor_ore",
    "minecart", "armor", "round", "ore_sample", "dense_ore",
    "bolt", "ingot", "tiny_dust", "gear"
];

static colorOresPartsArray as string[] = [
    "nugget", "dirty_dust", "cluster", "crystal",
    "plate", "centrifuged_ore", "rock", "ore_rock",
    "missing", "block", "shard", "molten",
    "dust", "crushed_ore", "ore", "small_dust",
    "clump","purified_ore", "poor_ore", "round",
    "ore_sample", "dense_ore", "ingot", "tiny_dust",
    "dense_plate"
];

static geometryOresPartsArray as string[] = [
    "rhombus", "spherical", "square",
    "ore", "purified_ore", "poor_ore", "ore_sample", "molten"
];

static metalPartsArray_1 as string[] = [
    "nugget", "beam", "dirty_dust", "cluster", "ring",
    "rod", "crystal", "plate", "chipped_gem", "casing",
    "missing", "dense_plate", "block", "shard", "molten",
    "flawless_gem", "dust", "small_dust", "long_rod", "small_spring",
    "clump", "flawed_gem", "large_spring", "minecart", "round",
    "bolt", "ingot", "tiny_dust", "gear"
];


//MaterialsListArray
static colorOresMaterialArray as int[string] = {
    "red" : 0xfc0d20,
    "yellow" : 0xffd701,
    "blue" : 0x00a2dd
};

static geometryOresMaterialArray as int[string] = {
    "rhombus" : 0xffffff,
    "spherical" : 0xffffff,
    "square" : 0xffffff
};

static metalMaterialArray as int[string] = {
    //"name" : 0xffffff
};