#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import scripts.grassUtils.RecipeUtils;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){

RecipeUtils.recipeTweak(true, <magneticraft:iron_pipe>*6,[
	[null, <ore:ingotIron>, null],
	[<ore:lightPlateIron>, <ore:blockGlass>, <ore:lightPlateIron>],
	[null, <ore:ingotIron>, null]
]);

RecipeUtils.recipeTweak(true, <artisanworktables:toolbox>, [
	[<ore:plankWood>, <ore:plateBronze>, <ore:plankWood>],
	[<ore:plankWood>, <ore:chest>, <ore:plankWood>],
	[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
]);

RecipeUtils.recipeTweak(true, <contenttweaker:primordium_shard> * 48, [[<prodigytech:primordium>]]);

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

}
