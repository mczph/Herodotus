#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import mods.prodigytech.magneticreassembler;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){

magneticreassembler.addRecipe(<ore:shardIron>, <ore:gemChippedIron>.materialPart);
magneticreassembler.addRecipe(<prodigytech:fuel_pellet_64>, <prodigytech:carbon_plate>);
}