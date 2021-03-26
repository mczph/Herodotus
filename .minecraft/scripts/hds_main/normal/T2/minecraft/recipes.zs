#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import scripts.grassUtils.RecipeUtils;
import scripts.hds_main.utils.modloader.isInvalid;
import scripts.grassUtils.RecipeUtils.createCrossWithCore;

if(!isInvalid){

RecipeUtils.recipeTweak(true, <magneticraft:iron_pipe>*6,[
	[null, <ore:ingotIron>, null],
	[<ore:lightPlateIron>, <ore:blockGlass>, <ore:lightPlateIron>],
	[null, <ore:ingotIron>, null]
]);

}