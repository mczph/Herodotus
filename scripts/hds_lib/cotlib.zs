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

static allPartsMap as string[][int] = {
    0 : [
        "nugget", "beam", "dirty_dust", "cluster", "ring",
        "rod", "crystal", "plate", "chipped_gem", "centrifuged_ore",
        "rock", "ore_rock", "casing", "missing", "dense_plate",
        "block", "shard", "molten", "flawless_gem", "dust",
        "crushed_ore", "ore", "small_dust", "long_rod", "small_spring",
        "clump", "flawed_gem", "large_spring", "purified_ore", "poor_ore",
        "minecart", "armor", "round", "ore_sample", "dense_ore",
        "bolt", "ingot", "tiny_dust", "gear"
    ],
    1 : [
        "rhombus", "spherical", "square",
        "ore", "purified_ore", "poor_ore", "ore_sample", "molten"
    ],
    2 : [
        "nugget", "beam", "dirty_dust", "cluster", "ring",
        "rod", "crystal", "plate", "chipped_gem", "casing",
        "missing", "dense_plate", "block", "shard", "molten",
        "flawless_gem", "dust", "small_dust", "long_rod", "small_spring",
        "clump", "flawed_gem", "large_spring", "minecart", "round",
        "bolt", "ingot", "tiny_dust", "gear"
    ]
};

static allMaterialMap as int[string][int] = {
    0 : {
        "red" : 0xfc0d20,
        "yellow" : 0xffd701,
        "blue" : 0x00a2dd
    },
    1 : {
        "rhombus" : 0xffffff,
        "spherical" : 0xffffff,
        "square" : 0xffffff
    },
    2 : {
        // "name": 0xabcdef
    }
};
