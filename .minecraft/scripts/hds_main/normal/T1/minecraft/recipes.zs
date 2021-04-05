#packmode normal
#no_fix_recipe_book
#priority -1

import crafttweaker.item.IItemStack;
import scripts.grassUtils.RecipeUtils;
import crafttweaker.item.IItemDefinition;
import scripts.hds_main.utils.modloader.isInvalid;
import scripts.grassUtils.RecipeUtils.createCrossWithCore;

if(!isInvalid){

RecipeUtils.recipeTweak(true, <pyrotech:mechanical_hopper>,[
    [<pyrotech:material:16>, null, <pyrotech:material:16>],
    [<ore:plankWood>, <ore:stickStone>, <ore:plankWood>],
    [null, <pyrotech:material:16>, null]
]);

RecipeUtils.recipeTweak(true, <pyrotech:crude_axe>,[
    [<pyrotech:material:10>, <pyrotech:material:12>],
    [null, <minecraft:stick>]
]);

RecipeUtils.recipeTweak(true, <pyrotech:compacting_bin>,[
    [<ore:plankWood>, null, <ore:plankWood>], 
    [<ore:plankWood>, null, <ore:plankWood>], 
    [<pyrotech:material:12>, <ore:slabWood>, <pyrotech:material:12>]
]);

RecipeUtils.recipeTweak(true, <pyrotech:crude_pickaxe>,[
    [<tconstruct:pick_head>.withTag({Material: "flint"})], 
    [<pyrotech:material:12>], 
    [<ore:stickWood>]
]);

RecipeUtils.recipeTweak(true, <artisanworkstumps:workstump_basic>,[
    [<pyrotech:material:16>, <ore:plankWood>, <pyrotech:material:16>],
    [<ore:plankWood>, <pyrotech:worktable>, <ore:plankWood>],
    [<ore:plankWood>, <pyrotech:stash>, <ore:plankWood>]
]);

RecipeUtils.recipeTweak(false, <ore:dustBronze>.materialPart*4,[
    [<ore:dustTin>, <ore:dustCopper>, <ore:dustCopper>, <ore:dustCopper>]
]);

RecipeUtils.recipeTweak(true, <tconstruct:pattern> * 4, [
    [<pyrotech:material:20>, <pyrotech:material:13>],
    [<pyrotech:material:13>, <pyrotech:material:20>]
]);

RecipeUtils.recipeTweak(true, <minecraft:hopper>,[
    [<ore:plateBronze>.materialPart, null, <ore:plateBronze>.materialPart],
    [<ore:plateBronze>.materialPart, <pyrotech:mechanical_hopper>, <ore:plateBronze>.materialPart],
    [null, <ore:plateBronze>.materialPart, null]
]);

val pyrotechDevices as IItemStack[IItemStack] = {
    <pyrotech:brick_kiln> : <pyrotech:stone_kiln>,
    <pyrotech:brick_oven> : <pyrotech:stone_oven>,
    <pyrotech:brick_sawmill> : <pyrotech:stone_sawmill>,
    <pyrotech:brick_crucible> : <pyrotech:stone_crucible>
};

for brick, stone in pyrotechDevices {
    RecipeUtils.recipeTweak(true, brick, [
        [<pyrotech:material:5>, <pyrotech:material:5>, <pyrotech:material:5>],
        [<pyrotech:material:5>, stone, <pyrotech:material:5>],
        [<pyrotech:refractory_brick_block>, <pyrotech:refractory_brick_block>, <pyrotech:refractory_brick_block>]
    ]);
}

RecipeUtils.recipeTweak(true, <pyrotech:anvil_iron_plated>, [
    [<ore:stoneMarble>, <ore:stoneMarble>, <ore:stoneMarble>],
    [<minecraft:stone:2>, <minecraft:stone:2>, <minecraft:stone:2>],
    [<minecraft:stone_slab>, <minecraft:stone_slab>, <minecraft:stone_slab>]
]);

RecipeUtils.recipeTweak(true, <bibliocraft:framedchest:6>, [
    [<bibliocraft:framingsheet>, <bibliocraft:framingsheet>, <bibliocraft:framingsheet>],
    [<bibliocraft:framingsheet>, <bibliocraft:label:6>, <bibliocraft:framingsheet>],
    [<bibliocraft:framingsheet>, <minecraft:chest>, <bibliocraft:framingsheet>]
]);

val vPlankDef as IItemDefinition = <minecraft:planks>.definition;
val bbChestDef as IItemDefinition = <bibliocraft:framedchest>.definition;
val bbLableDef as IItemDefinition = <bibliocraft:label>.definition;
for i in 0 .. 6{
    val plank as IItemStack = vPlankDef.makeStack(i);
    val lable as IItemStack = bbLableDef.makeStack(i);
    val out as IItemStack = bbChestDef.makeStack(i);
    RecipeUtils.recipeTweak(true, out, [
        [plank, plank, plank],
        [plank, lable, plank],
        [plank, <ore:chestWood>, plank]
    ]);
}

recipes.addShapeless("tiny_bronze_dust", <ore:dustTinyBronze>.materialPart * 4, [
    <ore:dustTinyCopper>, <ore:dustTinyCopper>, <ore:dustTinyCopper>, <ore:dustTinyTin>
]);

recipes.addShapeless("bronze_dust_from_small", <ore:dustBronze>.materialPart, [
    <ore:dustSmallCopper>, <ore:dustSmallCopper>, <ore:dustSmallCopper>, <ore:dustSmallTin>
]);

recipes.replaceAllOccurences(<ore:ingotFerramic>, <ore:ingotBronze>, <*>.only(function(item) {
    return item.definition.owner == "prodigytech" && (item.ores.length == 0 || !item.ores[0].name.contains("Ferramic"));
}));

recipes.replaceAllOccurences(<bibliocraft:framingsaw>, <ore:artisansHandsaw>, <*>.only(function(item) {
    return item.definition.owner == "bibliocraft";
}));

recipes.replaceAllOccurences(<ore:gearFerramic>, <ore:gearBronze>, <*>.only(function(item) {
    return item.definition.owner == "prodigytech";
}));

recipes.replaceAllOccurences(<minecraft:iron_nugget>, <ore:nuggetIron>, <*>.only(function(item) {
    return item.definition.owner == "factorytech";
}));

recipes.replaceAllOccurences(<minecraft:dye:4>, <ore:gemFlawedQuartz>, <ore:artisansAthame>);

recipes.addShapeless("hot_air_solderer_trans_0", <contenttweaker:hot_air_solderer>,
    [<contenttweaker:hot_air_solderer:*>, <prodigytech:heat_capacitor_0:*>.marked("c")], 
    function(out, ins, info) {
        return out.withDamage(max(0, 32000 - (12000 - ins.c.damage)));
    }, null
);

recipes.addShapeless("hot_air_solderer_trans_1", <contenttweaker:hot_air_solderer>,
    [<contenttweaker:hot_air_solderer:*>, <prodigytech:heat_capacitor_1:*>.marked("c")], 
    function(out, ins, info) {
        return out.withDamage(max(0, 32000 - (12000 - ins.c.damage) * 3));
    }, null
);

recipes.addShapeless("hot_air_solderer_trans_2", <contenttweaker:hot_air_solderer>,
    [<contenttweaker:hot_air_solderer:*>, <prodigytech:heat_capacitor_2:*>.marked("c")], 
    function(out, ins, info) {
        return out.withDamage(max(0, 32000 - (12000 - ins.c.damage) * 5));
    }, null
);

recipes.addShapeless("hot_air_solderer_trans_3", <contenttweaker:hot_air_solderer>,
    [<contenttweaker:hot_air_solderer:*>, <prodigytech:heat_capacitor_3:*>.marked("c")], 
    function(out, ins, info) {
        return out.withDamage(max(0, 32000 - (12000 - ins.c.damage) * 12));
    }, null
);
}