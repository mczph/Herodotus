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

StoneKiln.removeRecipes(<minecraft:cobblestone>);
BrickKiln.removeRecipes(<minecraft:cobblestone>);

KRCSOreProcessor("copper", <ore:shardCopper>.materialPart, <ore:clumpCopper>, [<ore:crushedOreCopper>.materialPart]);
KRCSOreProcessor("tin", <ore:shardTin>.materialPart, <ore:clumpTin>, [<ore:crushedOreTin>.materialPart]);

allPyroKiln("fixed_glass_recipe", <minecraft:glass>, <ore:sand>, 20*60);
allPyroKiln("fixed_slagglass_recipe", <pyrotech:slag_glass>, <pyrotech:pile_slag>, 60*20);

BrickKiln.addRecipe("iron_allay", <enderio:item_alloy_ingot:9>, <ore:squareRed>, 45 * 20);

StoneKiln.addRecipe("gravel_to_cobblestone_sk", <minecraft:cobblestone>, <ore:gravel>, 30*20, 0.1, [<pyrotech:rock>*6, <pyrotech:rock:1>*6, <pyrotech:rock:2>*6, <pyrotech:rock:3>*6]);
BrickKiln.addRecipe("gravel_to_cobblestone_bk", <minecraft:cobblestone>, <ore:gravel>, 25*20, 0.05, [<pyrotech:rock>*6, <pyrotech:rock:1>*6, <pyrotech:rock:2>*6, <pyrotech:rock:3>*6]);
}
