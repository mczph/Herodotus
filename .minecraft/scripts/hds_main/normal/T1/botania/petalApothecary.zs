#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.botania.Apothecary;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){

Apothecary.removeRecipe(<botania:specialflower>);
Apothecary.addRecipe(<contenttweaker:dark_energion_crystal_seed>, [
    <prodigytech:primordium>, <ore:dustEnergion>, <ore:dustBronze>, <ore:dustIron>, <ore:gunpowder>, <ore:gemQuartz>, <ore:gemQuartz>, <ore:gemQuartz>
]);
}