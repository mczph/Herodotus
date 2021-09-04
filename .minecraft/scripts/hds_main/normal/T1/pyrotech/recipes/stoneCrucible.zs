#packmode normal
#priority -1

import scripts.hds_main.utils.modloader.isInvalid;
import scripts.hds_main.normal.T1.pyrotech.ptFunctions.allPyroCrucible;

if(!isInvalid){

allPyroCrucible("molten_lead", <fluid:lead>*144, <ore:orePurifiedLead>, 40*20);
allPyroCrucible("molten_lead_plate", <fluid:lead>*144, <ore:plateLead>, 30*20);
allPyroCrucible("molten_lead_dust", <fluid:lead>*144, <ore:dustLead>, 30*20);

allPyroCrucible("molten_bronze", <fluid:bronze>*144, <ore:dustBronze>, 20*20);
allPyroCrucible("molten_lead_ingot", <fluid:lead>*144, <ore:ingotLead>, 30*20);
allPyroCrucible("molten_bronze_ingot", <fluid:bronze>*144, <ore:ingotBronze>, 30*20);

allPyroCrucible("molten_copper", <fluid:copper>*144, <ore:dustCopper>, 20*20);
allPyroCrucible("molten_tin", <fluid:tin>*144, <ore:dustTin>, 20*20);
allPyroCrucible("molten_copper_ingot", <fluid:copper>*144, <ore:ingotCopper>, 30*20);
allPyroCrucible("molten_tin_ingot", <fluid:tin>*144, <ore:ingotTin>, 30*20);
allPyroCrucible("molten_copper_plate", <fluid:copper>*144, <ore:plateCopper>, 30*20);
allPyroCrucible("molten_tin_plate", <fluid:tin>*144, <ore:plateTin>, 30*20);

allPyroCrucible("molten_brass", <fluid:alubrass> * 144, <contenttweaker:brass_dust>, 20 * 20);
allPyroCrucible("molten_glass", <fluid:glass> * 1000, <ore:blockGlass>, 3 * 60 * 20);
allPyroCrucible("molten_glass_fromsand", <fluid:glass> * 1000, <ore:sand>, 3 * 60 * 20);
allPyroCrucible("molten_glim", <fluid:glimmerite> * 125, <ore:dustGlimmerite>, 1.5 * 60 * 20);

allPyroCrucible("molten_iron", <fluid:iron>*144, <ore:dustIron>, 20*20);
allPyroCrucible("molten_iron_ingot", <fluid:iron>*144, <ore:ingotIron>, 30*20);
allPyroCrucible("molten_iron_plate", <fluid:iron>*144, <ore:plateIron>, 30*20);

allPyroCrucible("molten_nickel", <fluid:nickel>*144, <ore:dustNickel>, 20*20);
allPyroCrucible("molten_nickel_ingot", <fluid:nickel>*144, <ore:ingotNickel>, 30*20);
allPyroCrucible("molten_nickel_plate", <fluid:nickel>*144, <ore:plateNickel>, 30*20);
}
