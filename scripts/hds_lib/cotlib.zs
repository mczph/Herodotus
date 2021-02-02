#priority 2001
#loader contenttweaker

import scripts.grassUtils.CotUtils;
import scripts.grassUtils.classes.MaterialSystemHelper.MaterialSystemHelper;

//registerParts
val registerPartsArray as string[] = [
    "rhombus", "spherical", "square", "4nugget"
];
val register as MaterialSystemHelper = CotUtils.getMaterialSystemHelper("registerPart");
for name in registerPartsArray{
    register.registerNormalPart(name, "item", false);
}

//partsArrays
static allPartsMap as string[][int] = {
    /*allPartsAsExample
    "nugget", "beam", "dirty_dust", "cluster", "ring",
    "rod", "crystal", "plate", "chipped_gem", "centrifuged_ore",
    "rock", "ore_rock", "casing", "missing", "dense_plate",
    "block", "shard", "molten", "flawless_gem", "dust",
    "crushed_ore", "ore", "small_dust", "long_rod", "small_spring",
    "clump", "flawed_gem", "large_spring", "purified_ore", "poor_ore",
    "minecart", "armor", "round", "ore_sample", "dense_ore",
    "bolt", "ingot", "tiny_dust", "gear"
    */
    0 : [//coloredOre
        "nugget", "dirty_dust", "cluster", "crystal",
        "centrifuged_ore", "rock", "ore_rock", "missing",
        "block", "shard", "molten", "dust",
        "crushed_ore", "ore", "small_dust", "clump",
        "purified_ore", "poor_ore", "ore_sample", "dense_ore",
        "ingot", "tiny_dust", "rhombus", "spherical", "square"
    ],
    1 : [//geometryOre
        "rhombus", "spherical", "square",
        "ore", "dense_ore", "poor_ore", "molten"
    ],
    2 : [//metal1
        "nugget", "beam", "dirty_dust", "cluster", "ring",
        "rod", "crystal", "plate", "chipped_gem", "casing",
        "missing", "dense_plate", "block", "shard", "molten",
        "flawless_gem", "dust", "small_dust", "long_rod", "small_spring",
        "clump", "flawed_gem", "large_spring", "minecart", "round",
        "ore", "purified_ore", "poor_ore", "ore_sample", "bolt",
        "ingot", "tiny_dust", "gear", "centrifuged_ore", "dense_ore",
        "crushed_ore", "rock", "ore_rock"
    ],
    3 : [//gems
        "nugget", "dirty_dust", "cluster",
        "chipped_gem", "casing", "missing",
        "block", "molten", "flawless_gem",
        "small_dust", "flawed_gem", "tiny_dust", "dust"
    ],
    4 : [//redstone
        "nugget", "dirty_dust", "cluster", "crystal",
        "centrifuged_ore", "rock", "ore_rock", "missing",
        "block", "shard", "flawed_gem", "chipped_gem", "flawless_gem",
        "crushed_ore", "small_dust", "clump",
        "purified_ore", "ore_sample", 
        "ingot", "tiny_dust"
    ]
};

//materialArrays
static allMaterialMap as int[string][int] = {
    0 : {//coloredOre
        "red" : 0xfc0d20,
        "yellow" : 0xffd701,
        "blue" : 0x00a2dd
    },
    1 : {//geometryOre
        "rhombus" : 0xffffff,
        "spherical" : 0xffffff,
        "square" : 0xffffff
    },
    2 : {//metal1
        "bronze" : 0xe9a230,
        "iron" : 0xd8af93,
        "lithium" : 0xd2d2d2,
        "coal" : 0x0f0f0f,
        "copper" : 0xff4100,
        "quartz" : 0xffffff,
        "lead" : 0x818ebe,
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
        "cobalt" : 0x2d8ba5,
        "titanium" : 0xded3f8,
        "potassium" : 0xff9e00,
        "iridium" : 0xeaeaea,
        "osmium" : 0x1ea2f6,

    },
    3 : {//gems
        //TODO colored gems
        "diamond" : 0x2fc7e4
    },
    4 : {//redstone
        "redstone" : 0x720000
    }
};

//dyewaterArray
static dyelist as int[string] = {
    "red_t1" : 0xfc0d20,
    "yellow_t1" : 0xffd701,
    "blue_t1" : 0x00a2dd,
    "red_t2" : 0xff2400,
    "yellow_t2": 0xebcc14,
    "blue_t2": 0x3018cf
};
