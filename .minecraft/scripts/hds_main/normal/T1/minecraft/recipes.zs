#packmode normal
#no_fix_recipe_book
#priority -1

import scripts.grassUtils.RecipeUtils;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){

RecipeUtils.recipeTweak(true, <pyrotech:crude_axe>,[
    [<tconstruct:axe_head>.withTag({Material: "stone"}),<pyrotech:material:12>],
    [null,<minecraft:stick>]
]);

RecipeUtils.recipeTweak(true, <pyrotech:compacting_bin>,[
	[<ore:plankWood>, null, <ore:plankWood>], 
	[<ore:plankWood>, null, <ore:plankWood>], 
	[<pyrotech:material:12>, <ore:slabWood>, <pyrotech:material:12>]
]);

RecipeUtils.recipeTweak(true, <pyrotech:crude_pickaxe>,[
	[null, <tconstruct:pick_head>.withTag({Material: "stone"}), null], 
	[null, <pyrotech:material:12>, null], 
	[null, <ore:stickWood>, null]
]);

RecipeUtils.recipeTweak(true, <artisanworkstumps:workstump_basic>,[
	[<pyrotech:material:16>, <ore:plankWood>, <pyrotech:material:16>],
	[<ore:plankWood>, <pyrotech:worktable>, <ore:plankWood>],
	[<ore:plankWood>, <pyrotech:stash>, <ore:plankWood>]
]);

RecipeUtils.recipeTweak(false, <ore:dustBronze>.materialPart*4,[
	[<ore:dustTin>, <ore:dustCopper>, <ore:dustCopper>, <ore:dustCopper>]
]);

RecipeUtils.recipeTweak(true, <minecraft:hopper>,[
	[<ore:plateBronze>.materialPart, null, <ore:plateBronze>.materialPart],
	[<ore:plateBronze>.materialPart, <pyrotech:crate>, <ore:plateBronze>.materialPart],
	[null, <ore:plateBronze>.materialPart, null]
]);

recipes.addShapeless("dark_energion_crystal_seed", <contenttweaker:dark_energion_crystal_seed>, [
	<prodigytech:primordium>, <ore:dustBronze>, <ore:dustIron>, <ore:gunpowder>
]);

recipes.addShapeless("tiny_bronze_dust", <ore:dustTinyBronze>.materialPart * 4, [
	<ore:dustTinyCopper>, <ore:dustTinyCopper>, <ore:dustTinyCopper>, <ore:dustTinyTin>
]);

recipes.replaceAllOccurences(<ore:ingotFerramic>, <ore:ingotBronze>, <*>.only(function(item) {
	return item.definition.owner == "prodigytech" && (item.ores.length == 0 || !item.ores[0].name.contains("Ferramic"));
}));

recipes.replaceAllOccurences(<ore:gearFerramic>, <ore:gearBronze>, <*>.only(function(item) {
	return item.definition.owner == "prodigytech";
}));

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