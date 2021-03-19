#packmode normal
#priority -1

import mods.pyrotech.GraniteAnvil;
import mods.pyrotech.IroncladAnvil;
import scripts.hds_main.utils.modloader.isInvalid;
import scripts.hds_main.normal.T1.pyrotech.ptFunctions.allPyroAnvil;
import scripts.hds_main.normal.T1.pyrotech.ptFunctions.rAllPyroAnvil;

if(!isInvalid){

//Remove
rAllPyroAnvil(<ore:pieceCoal>.materialPart);
rAllPyroAnvil(<minecraft:coal>);

//Add
allPyroAnvil("blue_square", <ore:rockLead>.materialPart, <ore:squareBlue>, 6, "hammer");
allPyroAnvil("rock_lead", <ore:crushedOreLead>.materialPart, <ore:rockLead>, 6, "pickaxe");

allPyroAnvil("yellow_square", <ore:rockCopper>.materialPart, <ore:squareYellow>, 6, "hammer");
allPyroAnvil("rock_copper", <ore:crushedOreCopper>.materialPart, <ore:rockCopper>, 6, "pickaxe");

allPyroAnvil("blue_cicrle", <ore:rockTin>.materialPart, <ore:sphericalBlue>, 6, "hammer");
allPyroAnvil("rock_tin", <ore:crushedOreTin>.materialPart, <ore:rockTin>, 6, "pickaxe");

allPyroAnvil("copper", <ore:dustSmallCopper>.materialPart, <ore:shardCopper>, 6, "hammer");
allPyroAnvil("tin", <ore:dustSmallTin>.materialPart, <ore:shardTin>, 6, "hammer");

allPyroAnvil("coal_block", <ore:pieceCoal>.materialPart*16, <ore:blockCoal>, 8, "hammer");

IroncladAnvil.addRecipe("i_break_red_square", <ore:rockIron>, <ore:squareRed>, 8, "hammer");
}