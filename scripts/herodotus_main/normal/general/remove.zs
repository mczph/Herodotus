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
    <botania:opencrate>,
    <botania:opencrate:1>,
    <ic2:crafting:2>,
    <ic2:crafting:7>,
    <ic2:te:111>,
    <ic2:te:112>,
    <ic2:te:113>,
    <ic2:te:114>,
    <ic2:te:115>
] as IItemStack[];


//Remove by OreDict
val removingODArray = [

] as IOreDictEntry[];


//Remove by recipe ID
val removingRNArray = [
    "extendedcrafting:black_iron_ingot"
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