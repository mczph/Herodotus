#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.prodigytech.explosionfurnace.recipes;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){

recipes.addRecipe(<ore:ingotIron>, <pneumaticcraft:ingot_iron_compressed>, 90, <emergingtechnology:shreddedplastic>, 1);
recipes.addRecipe(<ore:squareTierTwoRed>, <ore:shardIron>.materialPart, 90);
recipes.addRecipe(<ore:orePurifiedNickel>, <ore:shardNickel>.materialPart, 150, <pyrotech:material:22>, 1);
}