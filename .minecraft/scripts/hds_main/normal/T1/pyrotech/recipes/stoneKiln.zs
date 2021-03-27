#packmode normal
#priority -1

import scripts.hds_main.utils.modloader.isInvalid;
import scripts.hds_main.normal.T1.pyrotech.ptFunctions.allPyroKiln;
import scripts.hds_main.normal.T1.pyrotech.ptFunctions.KRCSOreProcessor;

if(!isInvalid){

KRCSOreProcessor("copper", <ore:shardCopper>.materialPart, <ore:clumpCopper>, [<ore:crushedOreCopper>.materialPart]);
KRCSOreProcessor("tin", <ore:shardTin>.materialPart, <ore:clumpTin>, [<ore:crushedOreTin>.materialPart]);
KRCSOreProcessor("copper_bucket", <hdsutils:copper_bucket>, <ore:plateCopper> * 3, [<ore:nuggetCopper>.materialPart * 6]);

allPyroKiln("lime", <pyrotech:material:22>, <ore:dustLimestone>, 15*20);
}