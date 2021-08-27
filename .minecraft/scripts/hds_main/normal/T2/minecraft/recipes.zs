#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import scripts.grassUtils.RecipeUtils;
import scripts.grassUtils.RecipeUtils.createCrossWithCore;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){

RecipeUtils.recipeTweak(true, <pneumaticcraft:armor_upgrade>, 
	createCrossWithCore(<ore:ingotIronCompressed>, <ore:rhombusTierTwoBlue>, <ore:lightPlateLead>)
);

RecipeUtils.recipeTweak(true, <storagenetwork:controller>, 
	createCrossWithCore(<ore:obsidian>, <storagenetwork:process_kabel>, <ore:rhombusTierTwoBlue>)
);

RecipeUtils.recipeTweak(true, <storagenetwork:process_kabel> * 4, 
	createCrossWithCore(<minecraft:observer>, <ore:nuggetGold>, <storagenetwork:kabel>)
);


RecipeUtils.recipeTweak(true, <storagenetwork:inventory>, 
	createCrossWithCore(<ore:chest>, <ore:nuggetIron>, <storagenetwork:kabel>)
);

RecipeUtils.recipeTweak(true, <storagenetwork:request>, 
	createCrossWithCore(<storagenetwork:inventory>, <ore:ingotGold>, <storagenetwork:kabel>)
);

RecipeUtils.recipeTweak(true, <storagenetwork:master>, 
	createCrossWithCore(<ore:gemFlawlessGlimmerite>, <ore:blockQuartz>, <storagenetwork:kabel>)
);

RecipeUtils.recipeTweak(true, <storagenetwork:kabel> * 8, [
	[<ore:plasticGray>, <ore:plasticGray>, <ore:plasticGray>],
	[<ore:plateTin>, null,<ore:plateTin>],
	[<ore:plasticGray>, <ore:plasticGray>, <ore:plasticGray>]
]);

RecipeUtils.recipeTweak(true, <pneumaticcraft:speed_upgrade>, 
	createCrossWithCore(<liquid:lubricant> * 1000, <ore:listAllsugar>, <ore:listAllsugar>)
);

RecipeUtils.recipeTweak(true, <magneticraft:iron_pipe> * 8, [
	[null, <ore:ingotIron>, null],
	[<ore:lightPlateIron>, <ore:blockGlass>, <ore:lightPlateIron>],
	[null, <ore:ingotIron>, null]
]);

RecipeUtils.recipeTweak(true, <artisanworktables:toolbox>, [
	[<ore:plankWood>, <ore:plateBronze>, <ore:plankWood>],
	[<ore:plankWood>, <ore:chest>, <ore:plankWood>],
	[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
]);

RecipeUtils.recipeTweak(true, <contenttweaker:primordium_shard> * 32, [[<prodigytech:primordium>]]);

RecipeUtils.recipeTweak(true, <factorytech:sluice>, [
	[<pyrotech:material:23>, null, <pyrotech:material:23>],
	[<pyrotech:material:23>, <factorytech:machinepart:180>, <pyrotech:material:23>],
	[<ore:lightPlateIron>, <ore:lightPlateIron>, <ore:lightPlateIron>]
]);

RecipeUtils.recipeTweak(true, <magneticraft:crushing_table>, [
	[<astralsorcery:blockmarbleslab>, <astralsorcery:blockmarbleslab>, <astralsorcery:blockmarbleslab>],
	[<pyrotech:material:23>, <ore:logWood>, <pyrotech:material:23>],
	[<ore:logWood>, <ore:logWood>, <ore:logWood>]
]);

RecipeUtils.recipeTweak(true, <pneumaticcraft:gps_tool>, [
	[null, <minecraft:redstone_torch>, null],
	[<pneumaticcraft:plastic:1>, <ore:blockGlassColorless>, <pneumaticcraft:plastic:1>],
	[<pneumaticcraft:plastic:1>, <ore:gemFlawlessGlimmerite>,<pneumaticcraft:plastic:1>]
]);

RecipeUtils.recipeTweak(true, <magneticraft:battery_item_low>, [
	[<ore:dustRedstone>, <ore:ingotCopper>, <ore:dustRedstone>],
	[<ore:lightPlateIron>, <ore:crystalLithium>, <ore:lightPlateIron>],
	[<ore:lightPlateIron>, <ore:crystalLithium>, <ore:lightPlateIron>]
]);

RecipeUtils.recipeTweak(true, <storagedrawers:controller>, [
	[<ore:stone>, <ore:stone>, <ore:stone>],
	[<minecraft:comparator>, <ore:drawerBasic>, <minecraft:comparator>],
	[<ore:lightPlateIron>, <ore:gemEmerald>, <ore:lightPlateIron>]
]);

RecipeUtils.recipeTweak(true, <factorytech:upgrade:3>,
	createCrossWithCore(<factorytech:machinepart:90>, <ore:dustLead>, <ore:plankWood>)
);

RecipeUtils.recipeTweak(true, <pyrotech:shelf>, [
	[<ore:plankWood>, <ore:slabWood>, <ore:plankWood>],
	[<ore:plankWood>, null, <ore:plankWood>],
	[<ore:plankWood>, <ore:slabWood>, <ore:plankWood>]
]);

RecipeUtils.recipeTweak(true, <advancedrocketry:iquartzcrucible>,
	createCrossWithCore(<minecraft:cauldron>, <ore:gemQuartz>, null)
);

RecipeUtils.recipeTweak(true, <pneumaticcraft:liquid_hopper>, [
	[<ore:blockGlass>, null, <ore:blockGlass>],
	[<ore:blockGlass>, <pneumaticcraft:omnidirectional_hopper>, <ore:blockGlass>],
	[null, <ore:blockGlass>, null]
]);

RecipeUtils.recipeTweak(true, <waystones:warp_stone>,
	createCrossWithCore(<ore:crystalLithium>, <ore:dyePurple>, <ore:enderpearl>)
);

recipes.replaceAllOccurences(<minecraft:iron_ingot>, <factorytech:ingot:5>, <*>.only(function(item) {
    return item.definition.owner == "factorytech" && !<factorytech:machinepart:51>.matches(item);
}));

recipes.replaceAllOccurences(<minecraft:gold_ingot>, <ore:ingotGold>, <*>.only(function(item) {
    return item.definition.owner == "factorytech";
}));

recipes.replaceAllOccurences(<minecraft:quartz>, <ore:gemQuartz>, <*>.only(function(item) {
    return item.definition.owner == "factorytech";
}));

recipes.replaceAllOccurences(<minecraft:redstone>, <ore:dustRedstone>, <*>.only(function(item) {
    return item.definition.owner == "factorytech";
}));

recipes.replaceAllOccurences(<factorytech:ore_dust:12>, <ore:dustLapis>, <*>.only(function(item) {
    return item.definition.owner == "factorytech";
}));

recipes.replaceAllOccurences(<ore:string>, <ore:plankWood>, <ore:artisansHammer>);

recipes.replaceAllOccurences(<magneticraft:crafting:4>, <factorytech:machinepart:130>);

recipes.replaceAllOccurences(<minecraft:furnace>, <pyrotech:brick_oven>, <*>.only(function(item) {
    return item.definition.owner == "factorytech";
}));

recipes.replaceAllOccurences(<minecraft:furnace>, <pyrotech:brick_oven>, <*>.only(function(item) {
    return item.definition.owner == "factorytech";
}));

recipes.replaceAllOccurences(<minecraft:dye:4>, <ore:lightPlateLead>, <*>.only(function(item) {
	return item.definition.id.matches("pneumaticcraft:.*upgrade");
}));

recipes.addShaped("iron_pickaxe_from_iron_allay", <minecraft:iron_pickaxe>, [
	[<ore:ingotConstructionAlloy>, <ore:ingotConstructionAlloy>, <ore:ingotConstructionAlloy>],
	[null, <ore:stickWood>, null],
	[null, <ore:stickWood>, null]
]);

}
