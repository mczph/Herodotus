#packmode normal
#priority -1

import scripts.hds_main.utils.modloader.isInvalid;
import scripts.hds_main.normal.T1.pyrotech.ptFunctions.allPyroKiln;
import scripts.hds_main.normal.T1.pyrotech.ptFunctions.KRCSOreProcessor;
import mods.pyrotech.BrickKiln;

if(!isInvalid){

KRCSOreProcessor("copper", <ore:shardCopper>.materialPart, <ore:clumpCopper>, [<ore:crushedOreCopper>.materialPart]);
KRCSOreProcessor("tin", <ore:shardTin>.materialPart, <ore:clumpTin>, [<ore:crushedOreTin>.materialPart]);

BrickKiln.addRecipe("iron_allay", <enderio:item_alloy_ingot:9>, <ore:squareRed>, 45 * 20);
}