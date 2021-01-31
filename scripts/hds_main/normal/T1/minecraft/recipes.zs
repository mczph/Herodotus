#packmode normal
#disable_search_tree
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
}