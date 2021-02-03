#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:ingotBronze>, null, <ore:ingotBronze>],
    [<ore:ingotBronze>, <pyrotech:brick_kiln>, <ore:ingotBronze>],
    [<ore:ingotBronze>, <ore:ingotBronze>, <ore:ingotBronze>]])
  .addTool(<artisanworktables:artisans_driver_wood>, 20)
  .addOutput(<prodigytech:solid_fuel_aeroheater>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:ingotBronze>, null, <ore:ingotBronze>],
    [<contenttweaker:material_part:1108>, <contenttweaker:material_part:1108>, <contenttweaker:material_part:1108>],
    [<ore:ingotBronze>, null, <ore:ingotBronze>]])
  .addTool(<artisanworktables:artisans_spanner_wood>, 1)
  .addOutput(<prodigytech:rotary_grinder>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:ingotBronze>, <ore:gearBronze>, <ore:ingotBronze>],
    [<ore:ingotBronze>, null, <ore:ingotBronze>],
    [<ore:ingotBronze>, null, <ore:ingotBronze>]])
  .addTool(<artisanworktables:artisans_spanner_wood>, 1)
  .addOutput(<prodigytech:heat_sawmill>)
  .create();
}