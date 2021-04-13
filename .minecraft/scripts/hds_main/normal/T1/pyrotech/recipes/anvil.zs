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
rAllPyroAnvil(<minecraft:stone_slab:*>);
rAllPyroAnvil(<minecraft:iron_ingot>);
rAllPyroAnvil(<minecraft:gold_ingot>);

//Add
allPyroAnvil("blue_square", <ore:rockLead>.materialPart, <ore:squareBlue>, 6, "hammer");
allPyroAnvil("rock_lead", <ore:crushedOreLead>.materialPart, <ore:rockLead>, 6, "pickaxe");

allPyroAnvil("yellow_square", <ore:rockCopper>.materialPart, <ore:squareYellow>, 4, "hammer");
allPyroAnvil("rock_copper", <ore:crushedOreCopper>.materialPart, <ore:rockCopper>, 4, "pickaxe");

allPyroAnvil("blue_cicrle", <ore:rockTin>.materialPart, <ore:sphericalBlue>, 4, "hammer");
allPyroAnvil("rock_tin", <ore:crushedOreTin>.materialPart, <ore:rockTin>, 4, "pickaxe");

allPyroAnvil("copper", <ore:dustSmallCopper>.materialPart, <ore:shardCopper>, 6, "hammer");
allPyroAnvil("tin", <ore:dustSmallTin>.materialPart, <ore:shardTin>, 6, "hammer");

allPyroAnvil("coal_block", <ore:pieceCoal>.materialPart*16, <ore:blockCoal>, 8, "hammer");

allPyroAnvil("iron_shard_from_alloy", <pyrotech:material:19> * 8, <ore:ingotConstructionAlloy>, 8, "pickaxe");

IroncladAnvil.addRecipe("i_break_red_square", <ore:rockIron>.materialPart, <ore:squareRed>, 8, "hammer");
}