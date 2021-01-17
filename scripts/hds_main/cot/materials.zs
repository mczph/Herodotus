#priority 2000
#loader contenttweaker

import scripts.grassUtils.CotUtils;
import scripts.grassUtils.classes.MaterialSystemHelper.MaterialSystemHelper;

val partsList as string[] = [
    "nugget", "beam", "dirty_dust", "cluster", "ring", 
    "rod", "crystal", "plate", "chipped_gem", "centrifuged_ore", 
    "rock", "ore_rock", "casing", "missing", "dense_plate", 
    "block", "shard", "molten", "flawless_gem", "dust", 
    "crushed_ore", "ore", "small_dust", "long_rod", "small_spring", 
    "clump", "flawed_gem", "large_spring", "purified_ore", "poor_ore", 
    "minecart", "armor", "round", "ore_sample", "dense_ore", 
    "bolt", "ingot", "tiny_dust", "gear"
];

val materialList as string[int] = {
    "iron" : 0x000000
};

val register as MaterialSystemHelper = CotUtils.getMaterialSystemHelper(1);
for mat in materialList{
    register.registerMaterial(mat, materialList[mat]);
}
for parts in partsList{
    register.addPart(parts);
}
register.registerAllMaterialParts();
