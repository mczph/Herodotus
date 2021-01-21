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
        "iron" : 0xe6e6e6,
        "lithium" : 0xd2d2d2,
        "coal" : 0x000000,
        "copper" : 0xff4100,
        "mercury" : 0xc8c8c8,
        "quartz" : 0xffffff,
        "lead" : 0x2b2b2b,
        "tin" : 0xdbdbdb,

        "nickel" : 0xd2d2ac,
        "silver" : 0xf7f7f7,

        "lapis" : 0x1010cb,
        //colored gems
        "tungsten" : 0x2c2c45,
        "sodium" : 0xdbdbdb,
        "aluminum": 0xe8e8e8,

        "radioactive_residue" : 0xe9c935,
        "gold" : 0xe8da16,
        "chromium" : 0xbfbfbf,

        "silicon" : 0x909090,
        "diamond" : 0x2fc7e4,
        "cobalt" : 0x2d8ba5,
        "titanium" : 0xded3f8,
        "potassium" : 0xff9e00,
        "iridium" : 0xeaeaea,
        "osmium" : 0x1ea2f6,


    }
};
