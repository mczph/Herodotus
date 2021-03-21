#packmode normal
#priority 1000

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.pyrotech.PitKiln;
import mods.pyrotech.StoneKiln;
import mods.pyrotech.BrickKiln;
import mods.pyrotech.GraniteAnvil;
import mods.pyrotech.IroncladAnvil;
import mods.pyrotech.StoneCrucible;
import mods.pyrotech.BrickCrucible;
import mods.pyrotech.DryingRack;
import mods.pyrotech.CrudeDryingRack;

//add universal drying rack recipes
function allDryingRack(name as string, output as IItemStack, input as IIngredient, time as int){
    CrudeDryingRack.addRecipe(name~"_cdr", output, input, time + 200);
    DryingRack.addRecipe(name~"_dr", output, input, time);
}

//remove all pyrotech drying rack recipes 
function rAllPyroDr(output as IIngredient){
    DryingRack.removeRecipes(output);
    CrudeDryingRack.removeRecipes(output);
}

//universal pyrotech kilns recipes tweaker
function uPyroKilns(name as string, output as IItemStack, input as IIngredient, failed as IItemStack, time as int){
    PitKiln.removeRecipes(output);
    StoneKiln.removeRecipes(output);
    BrickKiln.removeRecipes(output);
    PitKiln.addRecipe(name~"_pk", output, input, time, 0.3, [failed, failed*2, failed*3]);
    StoneKiln.addRecipe(name~"_sk", output, input, time - 5*20, 0.2, [failed*2, failed*3]);
    BrickKiln.addRecipe(name~"_bk", output, input, time - 10*20, 0.15, [failed*3]);
}

//add all pyrotech kiln recipes
function allPyroKiln(name as string, output as IItemStack, input as IIngredient, time as int){
    StoneKiln.addRecipe(name~"_sk", output, input, time);
    BrickKiln.addRecipe(name~"_bk", output, input, time);
}

//remove all pyroteh anvil recipes in once
function rAllPyroAnvil(output as IIngredient){
    GraniteAnvil.removeRecipes(output);
    IroncladAnvil.removeRecipes(output);
}

//add all pyrotech anvil recipes in once
function allPyroAnvil(name as string, output as IItemStack, input as IIngredient, hits as int, type as string){
    GraniteAnvil.addRecipe("g_break_" ~ name, output, input, hits, type);
    IroncladAnvil.addRecipe("i_break_" ~ name, output, input, hits, type);
}

//add all pyrotech crubible recipes
function allPyroCrucible(name as string, output as ILiquidStack, input as IIngredient, time as int){
    StoneCrucible.addRecipe(name~"_sc", output, input, time);
    BrickCrucible.addRecipe(name~"_bc", output, input, time);
}

//Kiln Recipe that make Clump ores into Shards(KRCS)
function KRCSOreProcessor(name as string, output as IItemStack, input as IIngredient, fitem as IItemStack[]){
    StoneKiln.addRecipe(name~"_sk_krcs", output, input, 2*60*20, 0.25, fitem);
    BrickKiln.addRecipe(name~"_bk_krcs", output, input, 2*60*16);
}