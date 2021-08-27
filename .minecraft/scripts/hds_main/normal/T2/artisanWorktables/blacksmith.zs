#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){
RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, <ore:barsIron>, null],
    [<ore:barsIron>, <pyrotech:refractory_brick_block>, <ore:barsIron>],
    [null, <ore:barsIron>, null]])
  .addTool(<contenttweaker:hot_air_solderer>, 60)
  .addOutput(<magneticraft:multiblock_parts:2> * 4)
  .create();

RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:cobblestoneCharred>, <ore:clumpYellow>, <ore:cobblestoneCharred>],
    [<ore:clumpYellow>, <pyrotech:refractory_brick_block>, <ore:clumpYellow>],
    [<ore:cobblestoneCharred>, <ore:clumpYellow>, <ore:cobblestoneCharred>]])
  .addTool(<contenttweaker:hot_air_solderer>, 60)
  .addOutput(<magneticraft:multiblock_parts:3> * 4)
  .create();

RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:ingotIron>, <ore:lightPlateIron>, <ore:ingotIron>],
    [<ore:ingotIron>, <magneticraft:crafting:2>, <ore:ingotIron>],
    [<ore:ingotLead>, <ore:lightPlateLead>, <ore:ingotLead>]])
  .addTool(<contenttweaker:hot_air_solderer>, 200)
  .addOutput(<magneticraft:multiblock_parts> * 4)
  .create();

RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:plasticWhite>, <ore:crystalLithium>, <ore:plasticWhite>],
    [<ore:plasticWhite>, <ore:crystalLithium>, <ore:plasticWhite>],
    [<ore:plasticWhite>, <ore:crystalLithium>, <ore:plasticWhite>]])
  .addTool(<contenttweaker:hot_air_solderer>, 200)
  .addOutput(<magneticraft:multiblock_parts:1>)
  .create();

RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:lightPlateIron>, <ore:ingotIron>, <ore:lightPlateIron>],
    [<ore:ingotIron>, null, <ore:ingotIron>],
    [<ore:lightPlateIron>, <ore:ingotIron>, <ore:lightPlateIron>]])
  .addTool(<contenttweaker:hot_air_solderer>, 60)
  .addOutput(<magneticraft:multiblock_parts:5> * 12)
  .create();

RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:ingotLead>, <ore:lightPlateLead>, <ore:ingotLead>],
    [<ore:lightPlateIron>, <pyrotech:refractory_brick_block>, <ore:lightPlateIron>],
    [<ore:ingotLead>, <ore:lightPlateLead>, <ore:ingotLead>]])
  .addTool(<contenttweaker:hot_air_solderer>, 60)
  .addOutput(<magneticraft:multiblock_column> * 6)
  .create();

RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:ingotIron>],
    [<ore:ingotIron>],
    [<ore:ingotIron>]])
  .addTool(<ore:artisansFile>, 20)
  .addOutput(<factorytech:machinepart:51> * 3)
  .create();

RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:ingotIronCompressed>, <ore:ingotIronCompressed>, <ore:ingotIronCompressed>],
    [<ore:heavyPlateLead>, <factorytech:intermediate:4>, <ore:heavyPlateLead>],
    [null, <magneticraft:multiblock_parts:4>, null]])
  .addTool(<ore:artisansHammer>, 120)
  .setFluid(<liquid:light_oil> * 1000)
  .addOutput(<hdsutils:oil_aiot:800>)
  .create();

RecipeBuilder.get("blacksmith")
  .setShapeless([<hdsutils:oil_aiot:*>.marked("t")])
  .addOutput(<hdsutils:oil_aiot>)
  .setFluid(<liquid:light_oil> * 1000)
  .setRecipeFunction(function(out, ins, info) {
    return ins.t.withDamage(min(0, ins.t.damage - 200));
  })
  .create();

RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:obsidian>, null, <ore:obsidian>],
    [<ore:obsidian>, <minecraft:cauldron>, <ore:obsidian>],
    [<ore:obsidian>, <ore:blockNickel>, <ore:obsidian>]])
  .addTool(<ore:artisansHammer>, 80)
  .addOutput(<factorytech:crucible>)
  .create();

RecipeBuilder.get("blacksmith")
  .setShaped([
    [null, <ore:lightPlateCopper>, null],
    [<ore:lightPlateCopper>, <ore:lightPlateIron>, <ore:lightPlateCopper>],
    [null, <ore:lightPlateCopper>, null]])
  .addTool(<ore:artisansHammer>, 20)
  .addOutput(<factorytech:pipe> * 6)
  .create();

}
