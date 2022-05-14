#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;

import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid) {

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:plateThaumium>,  <ore:plateThaumium>, <ore:plateThaumium>],
    [<ore:plateIron>, <thaumcraft:void_seed>, <ore:plateIron>],
    [<ore:plateThaumium>,  <ore:plateThaumium>, <ore:plateThaumium>]])
  .addTool(<contenttweaker:hot_air_solderer>, 100)
  .addOutput(<contenttweaker:aspect_reaction_vessel> * 2)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:plateThaumium>, <thaumcraft:jar_brace>, <ore:plateThaumium>],
    [<thaumicaugmentation:fortified_glass_pane>, <thaumicaugmentation:glass_tube>, <thaumicaugmentation:fortified_glass_pane>],
    [<ore:plateThaumium>, <thaumcraft:jar_brace>, <ore:plateThaumium>]])
  .setFluid(<liquid:unstable_aura> * 250)
  .addTool(<ore:artisansSpanner>, 25)
  .addOutput(<hdsutils:straight_tunnel> * 6)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<bloodmagic:slate>, <thaumcraft:essentia_input>, <bloodmagic:slate>],
    [<thaumicaugmentation:fortified_glass_pane>, <thaumcraft:mechanism_simple>, <thaumicaugmentation:fortified_glass_pane>],
    [<thaumicaugmentation:fortified_glass_pane>, <thaumcraft:jar_brace>, <thaumicaugmentation:fortified_glass_pane>]])
  .setFluid(<liquid:unstable_aura> * 250)
  .addTool(<ore:artisansSpanner>, 50)
  .addOutput(<hdsutils:alchemy_output_hatch>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<thaumicaugmentation:fortified_glass_pane>, <thaumcraft:jar_brace>, <thaumicaugmentation:fortified_glass_pane>],
    [<thaumicaugmentation:fortified_glass_pane>, <thaumcraft:mechanism_simple>, <thaumicaugmentation:fortified_glass_pane>],
    [<bloodmagic:slate>, <thaumcraft:essentia_output>, <bloodmagic:slate>]])
  .setFluid(<liquid:unstable_aura> * 250)
  .addTool(<ore:artisansSpanner>, 50)
  .addOutput(<hdsutils:alchemy_input_hatch>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [null, <thaumicaugmentation:fortified_glass_pane>, null],
    [<thaumcraft:mechanism_simple>, <thaumcraft:primordial_pearl>, <thaumcraft:mechanism_simple>],
    [<bloodmagic:blood_rune>, <ore:plateThaumium>, <bloodmagic:blood_rune>]])
  .setFluid(<liquid:taint_nutrition> * 4000)
  .addTool(<ore:artisansSpanner>, 100)
  .addOutput(<hdsutils:alchemy_controller>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<thaumicaugmentation:material:1>, <thaumcraft:jar_brace>, <thaumicaugmentation:material:1>],
    [<thaumcraft:mechanism_simple>, <thaumadditions:aspect_combiner>, <thaumcraft:mechanism_simple>],
    [<bloodmagic:slate>, <factorytech:machinepart:61>, <bloodmagic:slate>]])
  .setFluid(<liquid:taint_nutrition> * 1000)
  .addTool(<ore:artisansSpanner>, 100)
  .addOutput(<hdsutils:alchemy_crafter>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<thaumcraft:jar_brace>, <hdsutils:straight_tunnel>, <thaumcraft:jar_brace>],
    [<hdsutils:straight_tunnel>, <thaumcraft:centrifuge>, <hdsutils:straight_tunnel>],
    [<ore:plateBrass>, <factorytech:machinepart:61>, <ore:plateBrass>]])
  .setFluid(<liquid:taint_nutrition> * 1000)
  .addTool(<ore:artisansSpanner>, 100)
  .addOutput(<hdsutils:alchemy_separator>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [null, <thaumcraft:jar_brace>, null],
    [<thaumicaugmentation:fortified_glass_pane>, null, <thaumicaugmentation:fortified_glass_pane>],
    [<ore:plateBrass>, <ore:plateBrass>, <ore:plateBrass>]])
  .setFluid(<liquid:unstable_aura> * 250)
  .addTool(<ore:artisansSpanner>, 50)
  .addOutput(<hdsutils:alchemy_separator_tank>)
  .create();

}
