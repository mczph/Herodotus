#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){

RecipeBuilder.get("engineer")
  .setShaped([
    [<contenttweaker:material_part:1106>, null, <contenttweaker:material_part:1106>],
    [<contenttweaker:material_part:1106>, <pyrotech:brick_kiln>, <contenttweaker:material_part:1106>],
    [<contenttweaker:material_part:1106>, <contenttweaker:material_part:1106>, <contenttweaker:material_part:1106>]])
  .addTool(<artisanworktables:artisans_driver_wood>, 20)
  .addOutput(<prodigytech:solid_fuel_aeroheater>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<contenttweaker:material_part:1106>, null, <contenttweaker:material_part:1106>],
    [<contenttweaker:material_part:1108>, <contenttweaker:material_part:1108>, <contenttweaker:material_part:1108>],
    [<contenttweaker:material_part:1106>, null, <contenttweaker:material_part:1106>]])
  .addTool(<artisanworktables:artisans_spanner_wood>, 1)
  .addOutput(<prodigytech:rotary_grinder>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<contenttweaker:material_part:1106>, <contenttweaker:material_part:1108>, <contenttweaker:material_part:1106>],
    [<contenttweaker:material_part:1106>, null, <contenttweaker:material_part:1106>],
    [<contenttweaker:material_part:1106>, null, <contenttweaker:material_part:1106>]])
  .addTool(<artisanworktables:artisans_spanner_wood>, 1)
  .addOutput(<prodigytech:heat_sawmill>)
  .create();
}