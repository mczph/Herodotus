#packmode normal
#priority -1

import scripts.hds_main.utils.modloader.isInvalid;
import scripts.hds_main.normal.T1.pyrotech.ptFunctions.allPyroKiln;
import scripts.hds_main.normal.T1.pyrotech.ptFunctions.KRCSOreProcessor;

if(!isInvalid){

KRCSOreProcessor("copper", <ore:shardCopper>.firstItem, <ore:clumpCopper>, [<ore:crushedOreCopper>.firstItem]);
KRCSOreProcessor("tin", <ore:shardTin>.firstItem, <ore:clumpTin>, [<ore:crushedOreTin>.firstItem]);
}