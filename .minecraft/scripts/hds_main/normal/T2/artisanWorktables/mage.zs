#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;
import scripts.hds_main.utils.modloader.isInvalid;

if (!isInvalid){
    RecipeBuilder.get("mage")
    .setShaped([
        [<ore:gemFlawedGlimmerite>, <contenttweaker:wood_feature_crystal>, <ore:gemFlawedGlimmerite>],
        [<contenttweaker:wood_feature_crystal>, <magneticraft:multiblock_parts:3>, <contenttweaker:wood_feature_crystal>],
        [<ore:gemFlawedGlimmerite>, <contenttweaker:wood_feature_crystal>, <ore:gemFlawedGlimmerite>]])
    .addTool(<ore:artisansAthame>, 40)
    .setFluid(<liquid:mercury> * 1000)
    .addOutput(<contenttweaker:infinite_water_upgrade_module>)
    .create();
}