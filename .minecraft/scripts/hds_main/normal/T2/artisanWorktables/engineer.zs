#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemDefinition;
import mods.artisanworktables.builder.RecipeBuilder;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:ingotIron>, <magneticraft:crafting:3>, <ore:ingotIron>],
    [<ore:lightPlateLead>, <magneticraft:crafting:3>, <ore:lightPlateLead>],
    [<ore:ingotIron>, <magneticraft:crafting:3>, <ore:ingotIron>]])
  .addTool(<ore:artisansSpanner>, 20)
  .addOutput(<magneticraft:multiblock_parts:4>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:ingotBrickSeared>, <ore:ingotBrickSeared>, <ore:ingotBrickSeared>],
    [<ore:ingotBrickSeared>, <ore:gemEnergion>, <ore:ingotBrickSeared>],
    [<ore:ingotBrickSeared>, <ore:ingotBrickSeared>, <ore:ingotBrickSeared>]])
  .addTool(<ore:artisansDriver>, 50)
  .addOutput(<tconstruct:smeltery_controller>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [null, <ore:ingotCupronickel>, null],
    [<ore:ingotCupronickel>, <factorytech:machinepart:140>, <ore:ingotCupronickel>],
    [<ore:dustRedstone>, null, <ore:dustRedstone>]])
  .addTool(<ore:artisansDriver>, 10)
  .addOutput(<factorytech:machinepart:80>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [null, <ore:ingotCupronickel>, null],
    [<ore:ingotCupronickel>, <factorytech:machinepart:140>, <ore:ingotCupronickel>],
    [<minecraft:blaze_rod>, null, <minecraft:blaze_rod>]])
  .addTool(<ore:artisansDriver>, 15)
  .addOutput(<factorytech:machinepart:81>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:ingotIronCompressed>, <ore:ingotIronCompressed>, <ore:ingotIronCompressed>],
    [<ore:ingotIronCompressed>, <ore:heavyPlateIron>, <ore:ingotIronCompressed>],
    [<ore:ingotIronCompressed>, <ore:ingotIronCompressed>, <ore:ingotIronCompressed>]])
  .addTool(<ore:artisansSpanner>, 25)
  .setFluid(<liquid:light_oil> * 500)
  .addOutput(<pneumaticcraft:pressure_chamber_wall> * 16)
  .create();

RecipeBuilder.get("engineer")
  .setShapeless([<pneumaticcraft:pressure_chamber_wall>, <minecraft:hopper>, <factorytech:intermediate:4>, <factorytech:intermediate:4>])
  .addTool(<ore:artisansSpanner>, 45)
  .setFluid(<liquid:light_oil> * 500)
  .addOutput(<pneumaticcraft:pressure_chamber_interface>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:ingotNickel>, <ore:ingotNickel>, <ore:ingotNickel>],
    [<ore:ingotNickel>, <advancedrocketry:iquartzcrucible>, <ore:ingotNickel>],
    [<factorytech:machinepart:21>, <factorytech:machinepart:80>, <factorytech:machinepart:21>]])
  .addTool(<contenttweaker:hot_air_solderer>, 800)
  .addOutput(<factorytech:htfurnace>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:ingotIronCompressed>, <ore:ingotIronCompressed>, <ore:ingotIronCompressed>],
    [<ore:ingotIronCompressed>, <minecraft:piston>, <pneumaticcraft:pressure_tube>],
    [<ore:ingotIronCompressed>, <magneticraft:multiblock_parts>, <pneumaticcraft:ingot_iron_compressed>]])
  .addTool(<contenttweaker:hot_air_solderer>, 450)
  .addOutput(<pneumaticcraft:air_compressor>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:plateInvar>, <ore:plateInvar>, <ore:plateInvar>],
    [<ore:plateInvar>, <minecraft:piston>, <pneumaticcraft:advanced_pressure_tube>],
    [<ore:plateInvar>, <magneticraft:multiblock_parts>, <ore:plateInvar>]])
  .addTool(<contenttweaker:hot_air_solderer>, 450)
  .addOutput(<pneumaticcraft:advanced_air_compressor>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:ingotIron>, <ore:gearIron>, <ore:ingotIron>],
    [<ore:gemEnergion>, <ore:gemEnergion>, <ore:gemEnergion>],
    [<ore:ingotIron>, <ore:gemFlawlessGlimmerite>, <ore:ingotIron>]])
  .addTool(<ore:artisansSpanner>, 75)
  .addOutput(<hdsutils:hot_air_boiler_controller>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:ingotBronze>, <ore:gemQuartz>, <ore:ingotBronze>],
    [<ore:gemQuartz>, null, <ore:gemQuartz>],
    [<ore:ingotBronze>, <ore:gemQuartz>, <ore:ingotBronze>]])
  .addTool(<artisanworktables:artisans_driver_stone>, 25)
  .addOutput(<modulardiversity:blockhotairinputhatch>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:ingotBronze>, <minecraft:hopper>, <ore:ingotBronze>],
    [null, <ore:clumpYellow>, null],
    [<ore:ingotBronze>, <minecraft:bucket>, <ore:ingotBronze>]])
  .addTool(<artisanworktables:artisans_driver_stone>, 25)
  .addOutput(<modularmachinery:blockfluidoutputhatch>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:ingotBronze>, <minecraft:hopper>, <ore:ingotBronze>],
    [null, <ore:clumpBlue>, null],
    [<ore:ingotBronze>, <minecraft:bucket>, <ore:ingotBronze>]])
  .addTool(<artisanworktables:artisans_driver_stone>, 25)
  .addOutput(<modularmachinery:blockfluidinputhatch>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:ingotBronze>, <ore:gearBronze>, <ore:ingotBronze>],
    [<pyrotech:material:5>, <prodigytech:air_funnel>, <pyrotech:material:5>],
    [<pyrotech:material:5>, null, <pyrotech:material:5>]])
  .addTool(<contenttweaker:hot_air_solderer>, 400)
  .addOutput(<prodigytech:food_purifier>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<pyrotech:refractory_brick_block>, <pyrotech:refractory_brick_block>, <ore:ingotBronze>],
    [<ore:ingotGold>, <prodigytech:air_funnel>, <ore:ingotBronze>],
    [<ore:gearBronze>, <prodigytech:primordium>, <ore:ingotBronze>]])
  .addTool(<contenttweaker:hot_air_solderer>, 500)
  .addOutput(<prodigytech:food_enricher>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:lightPlateIron>, <ore:lightPlateIron>, <ore:lightPlateIron>],
    [<ore:lightPlateIron>, <factorytech:intermediate:4>, <ore:lightPlateIron>],
    [<ore:lightPlateIron>, <factorytech:machinepart:130>, <ore:lightPlateIron>]])
  .addTool(<contenttweaker:hot_air_solderer>, 150)
  .addOutput(<magneticraft:conveyor_belt> * 16)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:lightPlateCopper>, null, null],
    [<ore:lightPlateLead>, <factorytech:intermediate:4>, <ore:lightPlateLead>],
    [<ore:lightPlateIron>, <factorytech:machinepart:130>, <ore:lightPlateIron>]])
  .addTool(<contenttweaker:hot_air_solderer>, 200)
  .addOutput(<magneticraft:inserter>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<factorytech:machinepart:130>, <factorytech:machinepart:130>, <factorytech:machinepart:130>],
    [<ore:plankWood>, <ore:craftingPiston>, <ore:plankWood>],
    [<ore:lightPlateIron>, <ore:lightPlateIron>, <ore:lightPlateIron>]])
  .addTool(<contenttweaker:hot_air_solderer>, 200)
  .addOutput(<magneticraft:relay>)
  .create();

val worktableDef as IItemDefinition = <artisanworktables:worktable>.definition;
for i in 0 .. 15 {
    val worktable as IItemStack = worktableDef.makeStack(i);
    val type as string = worktable.name.split("\\.")[3];
    val workstump as IItemStack = itemUtils.getItem("artisanworkstumps:workstump_" ~ type);
    RecipeBuilder.get("engineer")
        .setShaped([
            [<ore:plateQuartz>, <ore:plateQuartz>, <ore:plateQuartz>],
            [<ore:lightPlateLead>, workstump, <ore:lightPlateLead>],
            [<pyrotech:refractory_brick_block>, <ore:lightPlateLead>, <pyrotech:refractory_brick_block>]])
        .addOutput(worktable)
        .addTool(<ore:artisansSpanner>, 50)
        .create();
}
}