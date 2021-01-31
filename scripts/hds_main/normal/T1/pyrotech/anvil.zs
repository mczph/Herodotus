#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;
import mods.pyrotech.GraniteAnvil;
import mods.pyrotech.IroncladAnvil;
import scripts.hds_main.utils.modloader.isInvalid;

//add both pyrotech anvil recipes in once
function allPyroAnvil(name as string, output as IItemStack, input as IIngredient, hits as int, type as string){
    GraniteAnvil.addRecipe("g_break_" ~ name, output, input, hits, type);
    IroncladAnvil.addRecipe("i_break_" ~ name, output, input, hits, type);
}

if(!isInvalid){
//Remove

//Add
allPyroAnvil("blue_square", <ore:rockLead>.firstItem, <ore:squareBlue>, 6, "hammer");
allPyroAnvil("rock_lead", <ore:crushedOreLead>.firstItem, <ore:rockLead>, 6, "pickaxe");

allPyroAnvil("yellow_square", <ore:rockCopper>.firstItem, <ore:squareYellow>, 6, "hammer");
allPyroAnvil("rock_copper", <ore:crushedOreCopper>.firstItem, <ore:rockCopper>, 6, "pickaxe");

allPyroAnvil("blue_cicrle", <ore:rockTin>.firstItem, <ore:sphericalBlue>, 6, "hammer");
allPyroAnvil("rock_tin", <ore:crushedOreTin>.firstItem, <ore:rockTin>, 6, "pickaxe");

allPyroAnvil("coal_block", <ore:pieceCoal>.firstItem*16, <ore:blockCoal>, 8, "hammer");
}