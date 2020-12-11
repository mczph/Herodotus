#packmode normal
#modloaded bathappymod
#priority 0

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

//Remove by ID
val removingArray = [
    <flopper:flopper>,
    <engineerstools:crushing_hammer>,
    <engineerstools:redia_tool>,
    <engineerstools:iron_grit>,
    <engineerstools:gold_grit>,
    <engineerstools:stimpack>,
    <engineerstools:sleeping_bag>,
    <botania:pool>,
    <botania:pool:2>,
    <advancedrocketry:platepress>,
    <botania:opencrate>
] as IItemStack[];


//Remove by OreDict
val removingODArray = [

] as IOreDictEntry[];


//Remove by recipe ID
val removingRNArray = [

] as string[];


//Remove by Mod ID
val removingMODIDArray = [
] as string[];

//Settlement
for ods in removingODArray{
    recipes.remove(ods);
}

for items in removingArray{
    recipes.remove(items);
}

for rns in removingRNArray{
    recipes.removeByRecipeName(rns);
}

for rmi in removingMODIDArray{
    recipes.removeByMod(rmi);
}