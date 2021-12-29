#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.advancedmortars.Mortar;
import scripts.hds_main.utils.modloader.isInvalid;

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
basicMotarRecipe(<ore:crushedOreLead>.materialPart, <ore:crushedOreLead>.materialPart, <ore:rockLead>.materialPart);

Mortar.addRecipe(["stone", "iron", "gold", "diamond", "obsidian", "emerald"], <ore:dustLimestone>.firstItem, 2, [<pyrotech:rock:8>]);
Mortar.addRecipe(["wood", "stone", "iron", "gold", "diamond", "obsidian", "emerald"], <prodigytech:flour>, 2, [<ore:cropWheat>]);

}
