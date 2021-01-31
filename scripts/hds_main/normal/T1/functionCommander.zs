#packmode normal
#priority -1

import scripts.hds_main.normal.T1.pyrotech.ptFunctions.allPyroAnvil;
import scripts.hds_main.normal.T1.pyrotech.ptFunctions.allPyroCrucible;
import scripts.hds_main.normal.T1.pyrotech.ptFunctions.KRCSOreProcessor;
import scripts.hds_main.normal.T1.artisanWorktables.awFunctions.MRLTOreProcessor;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){

//copper and tin
MRLTOreProcessor("copper", <ore:clumpCopper>.firstItem*4, <ore:crushedOreCopper>);
KRCSOreProcessor("copper", <ore:shardCopper>.firstItem, <ore:clumpCopper>, [<ore:crushedOreCopper>.firstItem]);
allPyroAnvil("copper", <ore:tinyDustCopper>.firstItem, <ore:shardCopper>, 6, "hammer");
allPyroCrucible("molten_copper", <fluid:copper>*144, <ore:dustCopper>, 20*20);

MRLTOreProcessor("tin", <ore:clumpTin>.firstItem*4, <ore:crushedOreTin>);
KRCSOreProcess("tin", <ore:shardTin>.firstItem, <ore:clumpTin> [<ore:crushedOreTin>.firstItem]);
allPyroAnvil("tin", <ore:tinyDustTin>.firstItem, <ore:shardTin>, 6, "hammer");
allPyroCrucible("molten_tin", <fluid:tin>*144, <ore:dustTin>, 20*20);


}