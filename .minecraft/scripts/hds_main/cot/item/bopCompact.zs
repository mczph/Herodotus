#priority 2000
#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import scripts.grassUtils.CotUtils;

val grassClumpNames as string[] = [
    "sandy", "loamy", "silty", "flowering", "original", "smoldering"
];

val dirtClumpNames as string[] = [
    "sandy", "loamy", "silty", "original", "hardened", "dried"
];

val miscNames as string[] = [
    "white_sandstone_rock", "coarse_silty_dirt_clump", "coarse_sandy_dirt_clump", "coarse_loamy_dirt_clump",
    "dried_sand_pile", "hardened_sand_pile", "white_sand_pile"
];

for name in grassClumpNames {
    CotUtils.addNormalItem(name~"_grass_clump");
}

for name in dirtClumpNames {
    CotUtils.addNormalItem(name~"_dirt_clump");
}

for name in miscNames {
    CotUtils.addNormalItem(name);
}
