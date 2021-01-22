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
    GraniteAnvil.addRecipe("G" ~ name, output, input, hits, type);//Gname
    IroncladAnvil.addRecipe("I" ~ name, output, input, hits, type);//Iname
}

if(!isInvalid){
//Remove

//Add
allPyroAnvil("breakCopperOre", <tinker_io:crushed_ore>.withTag({oreDict: "oreCopper"}), <thermalfoundation:ore:0>, 5, "hammer");
allPyroAnvil("breakTinOre", <tinker_io:crushed_ore>.withTag({oreDict: "oreTin"}), <thermalfoundation:ore:1>, 5, "hammer");
}