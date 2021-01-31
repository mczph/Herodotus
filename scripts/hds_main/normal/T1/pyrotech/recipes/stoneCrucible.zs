#packmode normal
#priority -1

import scripts.hds_main.utils.modloader.isInvalid;
import scripts.hds_main.normal.T1.pyrotech.ptFunctions.allPyroCrucible;

if(!isInvalid){

allPyroCrucible("molten_lead", <fluid:lead>*144, <ore:orePurifiedLead>, 4800);
allPyroCrucible("molten_bronze", <fluid:bronze>*144, <ore:dustBronze>, 20*20);

allPyroCrucible("molten_copper", <fluid:copper>*144, <ore:dustCopper>, 20*20);
allPyroCrucible("molten_tin", <fluid:tin>*144, <ore:dustTin>, 20*20);
}