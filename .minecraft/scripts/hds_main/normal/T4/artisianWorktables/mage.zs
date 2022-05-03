#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;

import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid) {
    RecipeBuilder.get("mage")
        .setShaped([
            [<ore:livingrock>, <ore:livingrock>, <ore:livingrock>],
            [<ore:livingrock>, <contenttweaker:resurrected_meat>, <ore:livingrock>],
            [<ore:livingrock>, <ore:livingrock>, <ore:livingrock>]])
        .setFluid(<liquid:fluid_mana> * 1000)
        .addTool(<ore:artisansTrowel>, 20)
        .addOutput(<botania:pool:2>)
        .create();
}
