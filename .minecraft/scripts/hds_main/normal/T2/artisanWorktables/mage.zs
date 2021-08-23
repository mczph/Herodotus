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
        [<contenttweaker:wood_feature_crystal>, <magneticraft:small_tank>, <contenttweaker:wood_feature_crystal>],
        [<ore:gemFlawedGlimmerite>, <contenttweaker:wood_feature_crystal>, <ore:gemFlawedGlimmerite>]])
    .addTool(<ore:artisansAthame>, 40)
    .setFluid(<liquid:mercury> * 1000)
    .addOutput(<contenttweaker:infinite_water_upgrade_module>)
    .create();

    RecipeBuilder.get("mage")
    .setShapeless([<ore:sphericalTierTwoBlue>])
    .setFluid(<liquid:water> * 500)
    .addTool(<ore:artisansGrimoire>, 15)
    .addOutput(<ore:gemChippedSilver>.materialPart)
    .create();

    RecipeBuilder.get("mage")
    .setShaped([
        [null, <minecraft:book>, null],
        [<ore:plasticLightBlue>, <ore:obsidian>, <ore:plasticLightBlue>],
        [<ore:obsidian>, <ore:obsidian>, <ore:obsidian>]])
    .addTool(<ore:artisansAthame>, 40)
    .setFluid(<liquid:mercury> * 1000)
    .addOutput(<minecraft:enchanting_table>)
    .create();
}