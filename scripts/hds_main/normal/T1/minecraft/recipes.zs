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

RecipeUtils.recipeTweak(false, <ore:dustBronze>.firstItem*4,[
	[<ore:dustTin>, <ore:dustCopper>, <ore:dustCopper>, <ore:dustCopper>]
]);

RecipeUtils.recipeTweak(true, <minecraft:hopper>,[
	[<ore:plateBronze>.firstItem, null, <ore:plateBronze>.firstItem],
	[<ore:plateBronze>.firstItem, <pyrotech:crate>, <ore:plateBronze>.firstItem],
	[null, <ore:plateBronze>.firstItem, null]
]);

recipes.addShapeless("dark_energion_crystal_seed", <contenttweaker:dark_energion_crystal_seed>, [
	<prodigytech:primordium>, <ore:dustBronze>, <ore:dustIron>, <ore:gunpowder>
]);

recipes.addShapeless("tiny_bronze_dust", <ore:dustTinyBronze>.firstItem * 4, [
	<ore:dustTinyCopper>, <ore:dustTinyCopper>, <ore:dustTinyCopper>, <ore:dustTinyTin>
]);

recipes.replaceAllOccurences(<ore:ingotFerramic>, <ore:ingotBronze>, <*>.only(function(item) {
	return item.ores.length == 0 || !item.ores[0].name.contains("Ferramic");
}));
}