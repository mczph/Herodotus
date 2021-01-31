#packmode normal
#priority -1

import scripts.hds_main.utils.modloader.isInvalid;
import scripts.hds_main.normal.T1.pyrotech.ptFunctions.allPyroAnvil;

if(!isInvalid){

//Remove

//Add
allPyroAnvil("blue_square", <ore:rockLead>.firstItem, <ore:squareBlue>, 6, "hammer");
allPyroAnvil("rock_lead", <ore:crushedOreLead>.firstItem, <ore:rockLead>, 6, "pickaxe");

allPyroAnvil("yellow_square", <ore:rockCopper>.firstItem, <ore:squareYellow>, 6, "hammer");
allPyroAnvil("rock_copper", <ore:crushedOreCopper>.firstItem, <ore:rockCopper>, 6, "pickaxe");

allPyroAnvil("blue_cicrle", <ore:rockTin>.firstItem, <ore:sphericalBlue>, 6, "hammer");
allPyroAnvil("rock_tin", <ore:crushedOreTin>.firstItem, <ore:rockTin>, 6, "pickaxe");

allPyroAnvil("copper", <ore:tinyDustCopper>.firstItem, <ore:shardCopper>, 6, "hammer");
allPyroAnvil("tin", <ore:tinyDustTin>.firstItem, <ore:shardTin>, 6, "hammer");
allPyroAnvil("coal_block", <ore:pieceCoal>.firstItem*16, <ore:blockCoal>, 8, "hammer");
}