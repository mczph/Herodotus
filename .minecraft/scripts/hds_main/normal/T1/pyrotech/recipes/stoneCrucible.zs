#packmode normal
#priority -1

import scripts.hds_main.utils.modloader.isInvalid;
import scripts.hds_main.normal.T1.pyrotech.ptFunctions.allPyroCrucible;

if(!isInvalid){

allPyroCrucible("molten_lead", <fluid:lead>*144, <ore:orePurifiedLead>, 20*20);
allPyroCrucible("molten_bronze", <fluid:bronze>*144, <ore:dustBronze>, 20*20);
allPyroCrucible("molten_lead_ingot", <fluid:lead>*144, <ore:ingotLead>, 30*20);
allPyroCrucible("molten_bronze_ingot", <fluid:bronze>*144, <ore:ingotBronze>, 30*20);

allPyroCrucible("molten_copper", <fluid:copper>*144, <ore:dustCopper>, 20*20);
allPyroCrucible("molten_tin", <fluid:tin>*144, <ore:dustTin>, 20*20);
allPyroCrucible("molten_copper_ingot", <fluid:copper>*144, <ore:ingotCopper>, 30*20);
allPyroCrucible("molten_tin_ingot", <fluid:tin>*144, <ore:ingotTin>, 30*20);

allPyroCrucible("molten_clay", <fluid:clay>*144, <pyrotech:material:4>, 10*20);
allPyroCrucible("molten_brass", <fluid:alubrass> * 144, <contenttweaker:brass_dust>, 20 * 20);
allPyroCrucible("molten_glass", <fluid:glass> * 1000, <ore:blockGlass>, 3 * 60 * 20);
allPyroCrucible("molten_glim", <fluid:glimmerite> * 125, <ore:dustGlimmerite>, 3 * 60 * 20);
}