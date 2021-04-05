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
    [null, <ore:ingotIron>, null],
    [null, <ore:ingotIron>, null],
    [null, <ore:ingotIron>, null]])
  .addTool(<ore:artisansFile>, 20)
  .addTool(<ore:artisansHandsaw>, 10)
  .addOutput(<factorytech:machinepart:51>*3)
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
  .setShaped([
    [<ore:ingotIronCompressed>, <ore:ingotIronCompressed>, <ore:ingotIronCompressed>],
    [<ore:ingotIronCompressed>, <ore:heavyPlateIron>, <ore:ingotIronCompressed>],
    [<ore:ingotIronCompressed>, <ore:ingotIronCompressed>, <ore:ingotIronCompressed>]])
  .addTool(<ore:artisansSpanner>, 25)
  .setFluid(<liquid:light_oil> * 500)
  .addOutput(<pneumaticcraft:pressure_chamber_wall> * 16)
  .create();

RecipeBuilder.get("engineer")
  .setShapeless([<pneumaticcraft:pressure_chamber_wall>, <minecraft:hopper>, <ore:plateNickel>, <ore:plateNickel>])
  .addTool(<ore:artisansSpanner>, 45)
  .setFluid(<liquid:light_oil> * 500)
  .addOutput(<pneumaticcraft:pressure_chamber_interface>)
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