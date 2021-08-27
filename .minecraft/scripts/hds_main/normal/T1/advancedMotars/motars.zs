#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.advancedmortars.Mortar;
import scripts.hds_main.utils.modloader.isInvalid;

// Mortar.addRecipe(String[] mortarTypes, IItemStack output, int duration, IIngredient[] inputs);
// Mortar.addRecipe(String[] mortarTypes, IItemStack output, int duration, IItemStack secondaryOutput, float secondaryOutputChance, IIngredient[] inputs);
// Mortar.addRecipe(["wood", "stone", "iron", "diamond"], <minecraft:flint>, 4, <minecraft:flint> * 2, 0.5, [<minecraft:gravel> * 3]);
// This recipe for all mortars will use 3 gravel, take 4 clicks, and produce 1 flint with a 50% chance to produce an additional 2 flint.

function basicMotarRecipe (output as IItemStack, secOutput as IItemStack, input as IIngredient) {
    val inputs as IIngredient[] = [input];
    Mortar.addRecipe(["wood", "stone", "iron", "gold", "diamond", "obsidian", "emerald"], output, 2, secOutput, 0.35, inputs);
}

function advMotarRecipe (output as IItemStack, secOutput as IItemStack, input as IIngredient) {
    val inputs as IIngredient[] = [input];
    Mortar.addRecipe(["stone", "iron", "gold", "diamond", "obsidian", "emerald"], output, 4, secOutput, 0.2, inputs);
}

if(!isInvalid){

advMotarRecipe(<ore:rockTin>.materialPart, <ore:rockTin>.materialPart, <ore:sphericalBlue>);
basicMotarRecipe(<ore:crushedOreTin>.materialPart, <ore:crushedOreTin>.materialPart, <ore:rockTin>.materialPart);
basicMotarRecipe(<ore:dustSmallTin>.materialPart, <ore:dustSmallTin>.materialPart, <ore:shardTin>);

advMotarRecipe(<ore:rockCopper>.materialPart, <ore:rockCopper>.materialPart, <ore:squareYellow>);
basicMotarRecipe(<ore:crushedOreCopper>.materialPart, <ore:crushedOreCopper>.materialPart, <ore:rockCopper>.materialPart);
basicMotarRecipe(<ore:dustSmallCopper>.materialPart, <ore:dustSmallCopper>.materialPart, <ore:shardCopper>);

advMotarRecipe(<ore:rockLead>.materialPart, <ore:rockLead>.materialPart, <ore:squareBlue>);
basicMotarRecipe(<ore:crushedOreLead>.materialPart, <ore:crushedOreLead>.materialPart, <ore:rockCopper>.materialPart);
}
