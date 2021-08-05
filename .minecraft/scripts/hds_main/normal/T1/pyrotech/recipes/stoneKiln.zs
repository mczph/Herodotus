#packmode normal
#priority -1

import mods.pyrotech.StoneKiln;
import mods.pyrotech.BrickKiln;
import scripts.hds_main.utils.modloader.isInvalid;
import scripts.hds_main.normal.T1.pyrotech.ptFunctions.allPyroKiln;
import scripts.hds_main.normal.T1.pyrotech.ptFunctions.KRCSOreProcessor;

if(!isInvalid){

StoneKiln.removeRecipes(<pyrotech:material:5>);
BrickKiln.removeRecipes(<pyrotech:material:5>);

StoneKiln.removeRecipes(<minecraft:glass>);
BrickKiln.removeRecipes(<minecraft:glass>);

KRCSOreProcessor("copper", <ore:shardCopper>.materialPart, <ore:clumpCopper>, [<ore:crushedOreCopper>.materialPart]);
KRCSOreProcessor("tin", <ore:shardTin>.materialPart, <ore:clumpTin>, [<ore:crushedOreTin>.materialPart]);

allPyroKiln("fixed_glass_recipe", <minecraft:glass>, <ore:sand>, 20*60);

BrickKiln.addRecipe("iron_allay", <enderio:item_alloy_ingot:9>, <ore:squareRed>, 45 * 20);
}
