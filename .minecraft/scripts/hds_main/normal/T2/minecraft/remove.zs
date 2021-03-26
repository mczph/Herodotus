#packmode normal
#priority 0

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import scripts.hds_main.utils.modloader.isInvalid;

//something that recipeutils can't do or just remove
val removeByOutput as IItemStack[] = [
    <mekanism:transmitter>,
    <factorytech:pipe>,
    <embers:item_pipe>,
    <embers:pipe>,
    <embers:pump>,
    <embers:item_pump>
];

val removeByRecipeName as string[] = [];

val removeByModid as string[] = [];

if(!isInvalid) {
for item in removeByOutput {
    recipes.remove(item);
}

for name in removeByRecipeName {
    recipes.removeByRecipeName(name);
}

for id in removeByModid {
    recipes.removeByMod(id);
}
}