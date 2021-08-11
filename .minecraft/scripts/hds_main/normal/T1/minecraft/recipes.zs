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

RecipeUtils.recipeTweak(true, <pyrotech:compacting_bin>,[
    [<ore:plankWood>, null, <ore:plankWood>], 
    [<ore:plankWood>, null, <ore:plankWood>], 
    [<pyrotech:material:12>, <ore:slabWood>, <pyrotech:material:12>]
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
    [<pyrotech:material:20>, <pyrotech:material:20>],
    [<pyrotech:material:20>, <pyrotech:material:20>]
]);

RecipeUtils.recipeTweak(true, <minecraft:hopper>,[
    [<ore:ingotBronze>, null, <ore:ingotBronze>],
    [<ore:ingotBronze>, <pyrotech:mechanical_hopper>, <ore:ingotBronze>],
    [null, <ore:ingotBronze>, null]
]);

RecipeUtils.recipeTweak(true, <cookingforblockheads:spice_rack>*2, [
    [<ore:slabWood>, <ore:slabWood>, <ore:slabWood>],
    [<ore:ingotIron>, <ore:rodLongIron>, <ore:ingotIron>]
]);

RecipeUtils.recipeTweak(true, <pyrotech:anvil_iron_plated>, [
    [<ore:ingotConstructionAlloy>, <ore:ingotConstructionAlloy>, <ore:ingotConstructionAlloy>],
    [<minecraft:stone:2>, <minecraft:stone:2>, <minecraft:stone:2>],
    [<minecraft:stone_slab>, <minecraft:stone_slab>, <minecraft:stone_slab>]
]);

RecipeUtils.recipeTweak(true, <bibliocraft:framedchest:6>, [
    [<bibliocraft:framingsheet>, <bibliocraft:framingsheet>, <bibliocraft:framingsheet>],
    [<bibliocraft:framingsheet>, <bibliocraft:label:6>, <bibliocraft:framingsheet>],
    [<bibliocraft:framingsheet>, <minecraft:chest>, <bibliocraft:framingsheet>]
]);

RecipeUtils.recipeTweak(true, <prodigytech:heat_capacitor_1:12000>, [
    [null, <prodigytech:heat_capacitor_0:12000>, null],
    [<ore:dustAstralStarmetal>, <ore:dustGold>, <ore:dustAstralStarmetal>],
    [null, <prodigytech:heat_capacitor_0:12000>, null]
]);

RecipeUtils.recipeTweak(true, <jecalculation:item_calculator>, [
    [<pyrotech:material:16>, <ore:blockGlassColorless>, <pyrotech:material:16>],
    [<pyrotech:material:16>, <minecraft:stone_button>, <pyrotech:material:16>],
    [<pyrotech:material:16>, <minecraft:stone_button>, <pyrotech:material:16>]
]);

RecipeUtils.recipeTweak(true, <pyrotech:crate> * 2, RecipeUtils.createSurround(<ore:slabWood>, <ore:plankWood>));

recipes.addShaped("hopper_from_iron", <minecraft:hopper>, [
    [<ore:lightPlateIron>, null, <ore:lightPlateIron>],
    [<ore:lightPlateIron>, <minecraft:chest>, <ore:lightPlateIron>],
    [null, <ore:lightPlateIron>, null]
]);

recipes.addShaped("piston_from_alloy", <minecraft:piston>, [
    [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
    [<ore:cobblestone>, <ore:ingotConstructionAlloy>, <ore:cobblestone>],
    [<ore:cobblestone>, <ore:dustRedstone>, <ore:cobblestone>]
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

recipes.addShaped(<minecraft:iron_shovel>, [
    [<ore:ingotConstructionAlloy>],
    [<ore:stickWood>],
    [<ore:stickWood>]
]);

recipes.addShaped(<minecraft:iron_sword>, [
    [<ore:ingotConstructionAlloy>],
    [<ore:ingotConstructionAlloy>],
    [<ore:stickWood>]
]);

recipes.addShaped(<minecraft:iron_axe>, [
    [<ore:ingotConstructionAlloy>,<ore:ingotConstructionAlloy>],
    [<ore:ingotConstructionAlloy>, <ore:stickWood>],
    [null, <ore:stickWood>]
]);

recipes.addShaped(<minecraft:iron_hoe>, [
    [<ore:ingotConstructionAlloy>,<ore:ingotConstructionAlloy>],
    [null, <ore:stickWood>],
    [null, <ore:stickWood>]
]);

recipes.addShaped(<pyrotech:anvil_iron_plated>, [
    [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],
    [<minecraft:stone:2>, <minecraft:stone:2>, <minecraft:stone:2>],
    [<minecraft:stone_slab>, <minecraft:stone_slab>, <minecraft:stone_slab>]
]);

recipes.addShaped("flint_pickaxe_2",  <pyrotech:flint_pickaxe>, [
    [<tconstruct:pick_head>.withTag({Material: "flint"}), <pyrotech:material:12>],
    [null, <ore:stickWood>]
]);

recipes.addShaped("make_gravel", <minecraft:gravel>, RecipeUtils.createSurround(null, <ore:rock>));

recipes.addShapeless("recycle_racks", <minecraft:stick> * 4, [<pyrotech:drying_rack>]);

recipes.addShapeless("tiny_bronze_dust", <ore:dustTinyBronze>.materialPart * 4, [
    <ore:dustTinyCopper>, <ore:dustTinyCopper>, <ore:dustTinyCopper>, <ore:dustTinyTin>
]);

recipes.addShapeless("bronze_dust_from_small", <ore:dustBronze>.materialPart, [
    <ore:dustSmallCopper>, <ore:dustSmallCopper>, <ore:dustSmallCopper>, <ore:dustSmallTin>
]);

recipes.addShaped("iron_hammer_from_alloy", <pyrotech:iron_hammer>, [
    [null, <ore:ingotConstructionAlloy>, <ore:string>],
    [null, <ore:stickWood>, <ore:ingotConstructionAlloy>],
    [<ore:stickWood>, null, null]
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

recipes.replaceAllOccurences(<ore:string>, <pyrotech:material:32>, <ore:artisansGemCutter>);

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

furnace.addRecipe(<minecraft:dye:2>, <minecraft:cactus>);
}
