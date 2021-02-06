#packmode normal
#priority -1

import mods.pyrotech.GraniteAnvil;
import mods.pyrotech.IroncladAnvil;
import scripts.hds_main.utils.modloader.isInvalid;
import scripts.hds_main.normal.T1.pyrotech.ptFunctions.allPyroAnvil;
import scripts.hds_main.normal.T1.pyrotech.ptFunctions.rAllPyroAnvil;

if(!isInvalid){

//Remove
rAllPyroAnvil(<ore:pieceCoal>.firstItem);
rAllPyroAnvil(<minecraft:coal>);

//Add
allPyroAnvil("blue_square", <ore:rockLead>.firstItem, <ore:squareBlue>, 6, "hammer");
allPyroAnvil("rock_lead", <ore:crushedOreLead>.firstItem, <ore:rockLead>, 6, "pickaxe");

allPyroAnvil("yellow_square", <ore:rockCopper>.firstItem, <ore:squareYellow>, 6, "hammer");
allPyroAnvil("rock_copper", <ore:crushedOreCopper>.firstItem, <ore:rockCopper>, 6, "pickaxe");

allPyroAnvil("blue_cicrle", <ore:rockTin>.firstItem, <ore:sphericalBlue>, 6, "hammer");
allPyroAnvil("rock_tin", <ore:crushedOreTin>.firstItem, <ore:rockTin>, 6, "pickaxe");

allPyroAnvil("copper", <ore:dustSmallCopper>.firstItem, <ore:shardCopper>, 6, "hammer");
allPyroAnvil("tin", <ore:dustSmallTin>.firstItem, <ore:shardTin>, 6, "hammer");

allPyroAnvil("coal_block", <ore:pieceCoal>.firstItem*16, <ore:blockCoal>, 8, "hammer");

IroncladAnvil.addRecipe("rock_iron_to_crushed", <ore:crushedOreIron>.firstItem, <ore:rockIron>, 6, "hammer");
}