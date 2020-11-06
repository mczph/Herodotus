#packmode normal
#modloaded bathappymod
#priority 0

import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

//Remove by ID
val removingArray = [
    <ironbackpacks:upgrade>,
    <ironbackpacks:upgrade>.withTag({upgrade: "ironbackpacks:damage_bar"}),
    <ironbackpacks:upgrade>.withTag({upgrade: "ironbackpacks:lock"}),
    <ironbackpacks:upgrade>.withTag({upgrade: "ironbackpacks:extra_upgrade"}),
    <ironbackpacks:upgrade>.withTag({upgrade: "ironbackpacks:everlasting"}),
    <flopper:flopper>
] as IItemStack[];


//Remove by OreDict
val removingODArray = [

] as IOreDictEntry[];


//Remove by recipe ID
val removingRNArray = [

] as string[];


//Remove by Mod ID
val removingMODIDArray = [
    "appliedenergistics2",
    "enderio",
    "extendedcrafting",
    "immersiveengineering",
    "immersivetech",
    "immersivepetroleum",
    "emergingtechnology",
    "danknull",
    "extracells",
    "ae2stuff",
    "nuclearcraft",
    "qmd",
    "modularmachinery",
    "wct",
    "industrialwires",
    "packagedauto",
    "packagedexcrafting",
    "cookingforblockheads",
    "industrialforegoing",
    "actuallyadditions",
    "botanicadds",
    "xnet",
    "rftools",
    "ironjetpacks",
    "buildinggadgets",
    "compactmachines3",
    "darkutils",
    "ic2",
    "teslacorelib",
    "fluxnetworks"
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