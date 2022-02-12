#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:ingotGold>, <ore:dustRedstone>, <ore:ingotGold>],
    [<ore:plasticLime>, <ore:dustRedstone>, <ore:plasticLime>],
    [<ore:ingotGold>, <ore:plasticBlue>, <ore:ingotGold>]])
  .addTool(<contenttweaker:hot_air_solderer>, 20)
  .addOutput(<buildinggadgets:templatemanager>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<buildinggadgets:constructionpastecontainert2>, <ore:plasticLightBlue>, <buildinggadgets:constructionpastecontainert2>],
    [<ore:plasticLightBlue>, <ore:plasticLightBlue>, <ore:plasticLightBlue>],
    [<buildinggadgets:constructionpastecontainert2>, <ore:plasticLightBlue>, <buildinggadgets:constructionpastecontainert2>]])
  .addTool(<contenttweaker:hot_air_solderer>, 20)
  .addOutput(<buildinggadgets:constructionpastecontainert3>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:nuggetConstructionAlloy>, <ore:nuggetConstructionAlloy>, <ore:nuggetConstructionAlloy>],
    [<ore:nuggetConstructionAlloy>, <buildinggadgets:constructionpaste>, <ore:nuggetConstructionAlloy>],
    [<ore:nuggetConstructionAlloy>, <ore:nuggetConstructionAlloy>, <ore:nuggetConstructionAlloy>]])
  .addTool(<contenttweaker:hot_air_solderer>, 20)
  .addOutput(<buildinggadgets:constructionpastecontainer>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:nuggetIron>, <ore:nuggetIron>, <ore:nuggetIron>],
    [<ore:nuggetIron>, <buildinggadgets:constructionpaste>, <ore:nuggetIron>],
    [<ore:nuggetIron>, <ore:nuggetIron>, <ore:nuggetIron>]])
  .addTool(<contenttweaker:hot_air_solderer>, 20)
  .addOutput(<buildinggadgets:constructionpastecontainer>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<buildinggadgets:constructionpastecontainer>, <ore:nuggetGold>, <buildinggadgets:constructionpastecontainer>],
    [<ore:nuggetGold>, <ore:nuggetGold>, <ore:nuggetGold>],
    [<buildinggadgets:constructionpastecontainer>, <ore:nuggetGold>, <buildinggadgets:constructionpastecontainer>]])
  .addTool(<contenttweaker:hot_air_solderer>, 20)
  .addOutput(<buildinggadgets:constructionpastecontainert2>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:ingotIron>, <ore:dustRedstone>, <ore:ingotIron>],
    [<ore:plasticLime>, <ore:dustRedstone>, <ore:plasticLime>],
    [<ore:plasticWhite>, <ore:plasticBlue>, <ore:plasticWhite>]])
  .addTool(<contenttweaker:hot_air_solderer>, 50)
  .addOutput(<buildinggadgets:copypastetool>)
  .setMaximumTier(0)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:ingotIron>, <ore:dustRedstone>, <ore:ingotIron>],
    [<ore:plasticLightBlue>, <ore:dustRedstone>, <ore:plasticLightBlue>],
    [<ore:ingotIron>, <ore:plasticBlue>, <ore:ingotIron>]])
  .addTool(<contenttweaker:hot_air_solderer>, 50)
  .addOutput(<buildinggadgets:buildingtool>)
  .setMaximumTier(0)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:ingotIron>, <ore:dustRedstone>, <ore:ingotIron>],
    [<ore:plasticLightBlue>, <ore:plasticBlue>, <ore:plasticLightBlue>],
    [<ore:ingotIron>, <ore:plasticBlue>, <ore:ingotIron>]])
  .addTool(<contenttweaker:hot_air_solderer>, 50)
  .addOutput(<buildinggadgets:exchangertool>)
  .setMaximumTier(0)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:ingotIron>, <minecraft:redstone>, <ore:ingotIron>],
    [<minecraft:ender_pearl>, <minecraft:redstone>, <minecraft:ender_pearl>],
    [<ore:ingotIron>, <pneumaticcraft:plastic:4>, <contenttweaker:material_part:282>]])
  .addTool(<contenttweaker:hot_air_solderer>, 50)
  .addOutput(<buildinggadgets:destructiontool>)
  .setMaximumTier(0)
  .create();
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:ingotBronze>, null, <ore:ingotBronze>],
    [<ore:ingotBronze>, <pyrotech:brick_kiln>, <ore:ingotBronze>],
    [<pyrotech:material:5>, <pyrotech:material:5>, <pyrotech:material:5>]])
  .addTool(<ore:artisansDriver>, 20)
  .addOutput(<prodigytech:solid_fuel_aeroheater>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<pyrotech:material:5>, null, <pyrotech:material:5>],
    [<ore:gearBronze>, <ore:gearBronze>, <ore:gearBronze>],
    [<pyrotech:material:5>, null, <pyrotech:material:5>]])
  .addTool(<ore:artisansSpanner>, 50)
  .addOutput(<prodigytech:rotary_grinder>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:ingotBronze>, <ore:gearBronze>, <ore:ingotBronze>],
    [<ore:ingotBronze>, null, <ore:ingotBronze>],
    [<ore:ingotBronze>, null, <ore:ingotBronze>]])
  .addTool(<ore:artisansSpanner>, 50)
  .addOutput(<prodigytech:heat_sawmill>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:plateIron>, <hdsutils:tiny_starlight_storage:1>, <ore:plateIron>],
    [<astralsorcery:blockcustomflower>, <contenttweaker:starlight_frame>, <astralsorcery:blockcustomflower>],
    [<ore:plateIron>, <astralsorcery:blockcustomflower>, <ore:plateIron>]])
  .addTool(<ore:artisansSpanner>, 80)
  .addOutput(<prodigytech:primordialis_reactor>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:ingotBronze>, <ore:blockRedstone>, <ore:ingotBronze>],
    [<ore:dustAstralStarmetal>, <ore:dustAstralStarmetal>, <ore:dustAstralStarmetal>],
    [<ore:ingotBronze>, <ore:gearBronze>, <ore:ingotBronze>]])
  .addTool(<ore:artisansDriver>, 80)
  .addOutput(<prodigytech:energion_aeroheater>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:ingotBronze>, <ore:ingotBronze>, <ore:ingotBronze>],
    [<pyrotech:refractory_brick_block>, null, <pyrotech:refractory_brick_block>],
    [<pyrotech:refractory_brick_block>, <ore:ingotIron>, <pyrotech:refractory_brick_block>]])
  .addTool(<ore:artisansSpanner>, 60)
  .addOutput(<prodigytech:capacitor_charger>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:ingotBronze>, <ore:blockQuartz>, <ore:ingotBronze>],
    [<ore:dustAstralStarmetal>, <ore:dustAstralStarmetal>, <ore:dustAstralStarmetal>],
    [<ore:ingotBronze>, <ore:ingotBronze>, <ore:ingotBronze>]])
  .addTool(<contenttweaker:hot_air_solderer>, 750)
  .addOutput(<prodigytech:capacitor_aeroheater>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:ingotBronze>, <ore:blockRedstone>, <ore:ingotBronze>],
    [<ore:ingotIron>, <minecraft:iron_trapdoor>, <ore:ingotIron>],
    [<ore:ingotBronze>, <hdsutils:tiny_starlight_storage:1>, <ore:ingotBronze>]])
  .addTool(<contenttweaker:hot_air_solderer>, 400)
  .addOutput(<prodigytech:magnetic_reassembler>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<minecraft:ender_pearl>],
    [<prodigytech:primordium>],
    [<ore:rodLongBronze>]])
  .addTool(<contenttweaker:hot_air_solderer>, 200)
  .addOutput(<prodigytech:wormhole_linker>)
  .create();

}
