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
    [<ore:plasticBlue>],
    [<pneumaticcraft:pressure_tube>],
    [<pneumaticcraft:pressure_chamber_valve>]])
  .addTool(<ore:artisansCompass>, 10)
  .addOutput(<pneumaticcraft:advanced_pressure_tube>)
  .create();
RecipeBuilder.get("engineer")
  .setShaped([
    [null, <ore:plasticGray>, null],
    [<ore:plasticGray>, <ore:itemGhastTear>, <ore:plasticGray>],
    [null, <ore:plasticGray>, null]])
  .addTool(<ore:artisansSpanner>, 20)
  .addOutput(<industrialforegoing:mob_imprisonment_tool>)
  .create();
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:ingotIron>, <magneticraft:crafting:3>, <ore:ingotIron>],
    [<ore:lightPlateLead>, <magneticraft:crafting:3>, <ore:lightPlateLead>],
    [<ore:ingotIron>, <magneticraft:crafting:3>, <ore:ingotIron>]])
  .addTool(<ore:artisansSpanner>, 20)
  .addOutput(<magneticraft:multiblock_parts:4>)
  .create();

/* RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:ingotBrickSeared>, <ore:ingotBrickSeared>, <ore:ingotBrickSeared>],
    [<ore:ingotBrickSeared>, <ore:gemEnergion>, <ore:ingotBrickSeared>],
    [<ore:ingotBrickSeared>, <ore:ingotBrickSeared>, <ore:ingotBrickSeared>]])
  .addTool(<ore:artisansDriver>, 50)
  .addOutput(<tconstruct:smeltery_controller>)
  .create(); */

RecipeBuilder.get("engineer")
  .setShaped([
    [null, <ore:ingotCupronickel>, null],
    [<ore:ingotCupronickel>, <ore:crystalLithium>, <ore:ingotCupronickel>],
    [<ore:dustRedstone>, null, <ore:dustRedstone>]])
  .addTool(<ore:artisansDriver>, 10)
  .addOutput(<factorytech:machinepart:80>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [null, <ore:ingotCupronickel>, null],
    [<ore:ingotCupronickel>, <ore:crystalLithium>, <ore:ingotCupronickel>],
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
  .setFluid(<liquid:heavy_oil> * 500)
  .addOutput(<pneumaticcraft:pressure_chamber_wall> * 16)
  .create();

RecipeBuilder.get("engineer")
  .setShapeless([<pneumaticcraft:pressure_chamber_wall>, <minecraft:hopper>, <factorytech:intermediate:4>, <factorytech:intermediate:4>])
  .addTool(<ore:artisansSpanner>, 45)
  .setFluid(<liquid:heavy_oil> * 500)
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
  .addOutput(<herodotus:hot_air_boiler>)
  .create();
/*
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:ingotBronze>, <ore:gemQuartz>, <ore:ingotBronze>],
    [<ore:gemQuartz>, null, <ore:gemQuartz>],
    [<ore:ingotBronze>, <ore:gemQuartz>, <ore:ingotBronze>]])
  .addTool(<ore:artisansDriver>, 25)
  .addOutput(<gugu-utils:hotairinputhatch>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:ingotBronze>, <minecraft:hopper>, <ore:ingotBronze>],
    [null, <ore:clumpYellow>, null],
    [<ore:ingotBronze>, <minecraft:bucket>, <ore:ingotBronze>]])
  .addTool(<ore:artisansDriver>, 25)
  .addOutput(<modularmachinery:blockfluidoutputhatch>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:ingotBronze>, <minecraft:hopper>, <ore:ingotBronze>],
    [null, <ore:clumpBlue>, null],
    [<ore:ingotBronze>, <minecraft:bucket>, <ore:ingotBronze>]])
  .addTool(<ore:artisansDriver>, 25)
  .addOutput(<modularmachinery:blockfluidinputhatch>)
  .create();
*/
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
  .addTool(<contenttweaker:hot_air_solderer>, 400)
  .addOutput(<magneticraft:inserter>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<factorytech:machinepart:130>, <factorytech:machinepart:130>, <factorytech:machinepart:130>],
    [<ore:plankWood>, <ore:craftingPiston>, <ore:plankWood>],
    [<ore:lightPlateIron>, <ore:lightPlateIron>, <ore:lightPlateIron>]])
  .addTool(<contenttweaker:hot_air_solderer>, 400)
  .addOutput(<magneticraft:relay>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:ingotBronze>, null, <ore:ingotBronze>],
    [<ore:ingotBronze>, <factorytech:machinepart:90>, <ore:gearBronze>],
    [<ore:ingotBronze>, null, <ore:ingotBronze>]])
  .addTool(<contenttweaker:hot_air_solderer>, 400)
  .addOutput(<prodigytech:automatic_crystal_cutter>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<pneumaticcraft:pressure_gauge>, <ore:gearIron>, <pneumaticcraft:pressure_gauge>],
    [<pneumaticcraft:pressure_tube>, <factorytech:intermediate:4>, <pneumaticcraft:pressure_tube>],
    [<astralsorcery:blockmarbleslab>, <astralsorcery:blockmarbleslab>, <astralsorcery:blockmarbleslab>]])
  .addTool(<contenttweaker:hot_air_solderer>, 1000)
  .addOutput(<pneumaticcraft:vacuum_pump>)
  .create();
/*
RecipeBuilder.get("engineer")
  .setShapeless([<magneticraft:multiblock_parts:5>, <ore:hopper>, <ore:clumpBlue>])
  .addTool(<contenttweaker:hot_air_solderer>, 400)
  .addOutput(<modularmachinery:blockinputbus>)
  .create();

RecipeBuilder.get("engineer")
  .setShapeless([<magneticraft:multiblock_parts:5>, <ore:hopper>, <ore:clumpYellow>])
  .addTool(<contenttweaker:hot_air_solderer>, 400)
  .addOutput(<modularmachinery:blockoutputbus>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:ingotIronCompressed>, null, <ore:ingotIronCompressed>],
    [null, <ore:clumpBlue>, null],
    [<ore:ingotIronCompressed>, <pneumaticcraft:liquid_hopper>, <ore:ingotIronCompressed>]])
  .addTool(<contenttweaker:hot_air_solderer>, 150)
  .addOutput(<modularmachinery:blockfluidinputhatch:1>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:ingotIronCompressed>, null, <ore:ingotIronCompressed>],
    [null, <ore:clumpYellow>, null],
    [<ore:ingotIronCompressed>, <pneumaticcraft:liquid_hopper>, <ore:ingotIronCompressed>]])
  .addTool(<contenttweaker:hot_air_solderer>, 150)
  .addOutput(<modularmachinery:blockfluidoutputhatch:1>)
  .create();
*/
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:lightPlateIron>, <ore:barsIron>, <ore:lightPlateIron>],
    [<ore:lightPlateIron>, null, <ore:lightPlateIron>],
    [<ore:lightPlateIron>, <magneticraft:multiblock_parts>, <ore:lightPlateIron>]])
  .addTool(<contenttweaker:hot_air_solderer>, 650)
  .addOutput(<herodotus:steamer>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:sphericalTierTwoRed>]])
  .addTool(<ore:artisansBeaker>, 30)
  .setFluid(<fluid:mercury> * 250)
  .addOutput(<hdsutils:lithium_amalgam> * 2)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:lightPlateBronze>, <ore:blockIronCompressed>, <ore:lightPlateBronze>],
    [<prodigytech:primordium>, <prodigytech:primordium>, <prodigytech:primordium>],
    [<ore:lightPlateBronze>, <ore:dustEnergion>, <ore:lightPlateBronze>]])
  .addTool(<contenttweaker:hot_air_solderer>, 800)
  .addOutput(<prodigytech:fuel_processor>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:nuggetIron>, <ore:crystalLithium>, <ore:nuggetIron>],
    [<ore:nuggetIron>, <factorytech:machinepart:21>, <ore:nuggetIron>],
    [<ore:nuggetIron>, <ore:dustCopper>, <ore:nuggetIron>]])
  .addTool(<ore:artisansSpanner>, 50)
  .addOutput(<factorytech:intermediate:2> * 2)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:dustAstralStarmetal>, <ore:dustAstralStarmetal>, <ore:dustAstralStarmetal>],
    [<ore:ingotIronCompressed>, <ore:plasticLime>, <pneumaticcraft:pressure_tube>],
    [<ore:ingotIronCompressed>, <ore:ingotIronCompressed>, <ore:ingotIronCompressed>]])
  .addTool(<contenttweaker:hot_air_solderer>, 650)
  .addOutput(<pneumaticcraft:uv_light_box>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:plasticRed>, <ore:plasticRed>, <ore:plasticRed>],
    [<ore:plasticRed>, <pneumaticcraft:air_compressor>, <ore:gearIron>],
    [<ore:plasticRed>, <ore:blockRedstone>, <pyrotech:brick_tank>]])
  .addTool(<contenttweaker:hot_air_solderer>, 750)
  .addOutput(<pneumaticcraft:liquid_compressor>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:plasticBlue>, <ore:plasticBlue>, <ore:plasticBlue>],
    [<ore:plasticBlue>, <pneumaticcraft:advanced_air_compressor>, <ore:gearInvar>],
    [<ore:plasticBlue>, <ore:blockRedstone>, <pyrotech:brick_tank>]])
  .addTool(<contenttweaker:hot_air_solderer>, 750)
  .addOutput(<pneumaticcraft:advanced_liquid_compressor>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [null, <ore:plasticWhite>, null],
    [<ore:plasticWhite>, <ore:ingotIronCompressed>, <ore:plasticWhite>],
    [null, <ore:plasticWhite>, null]])
  .addTool(<ore:artisansSpanner>, 80)
  .addOutput(<pneumaticcraft:pressure_gauge>)
  .create();

RecipeBuilder.get("engineer")
  .setShapeless([<pneumaticcraft:unassembled_pcb>, <pneumaticcraft:capacitor>, <pneumaticcraft:capacitor>, <pneumaticcraft:transistor>, <pneumaticcraft:transistor>])
  .addTool(<contenttweaker:hot_air_solderer>, 50)
  .addOutput(<pneumaticcraft:printed_circuit_board>)
  .setFluid(<liquid:tin> * 144)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:ingotRiverIron> , <factorytech:machinepart:30>, <ore:ingotRiverIron> ],
    [<ore:ingotRiverIron> , <factorytech:intermediate:4>, <ore:ingotRiverIron> ],
    [<pyrotech:stone_bricks>, null, <pyrotech:stone_bricks>]])
  .addTool(<ore:artisansSpanner>, 80)
  .addOutput(<factorytech:metalcutter>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<pyrotech:material:20>, null, <pyrotech:material:20>],
    [<factorytech:intermediate:4>, <factorytech:machinepart:51>, <factorytech:machinepart:51>],
    [<pyrotech:material:20>, <magneticraft:multiblock_parts:4>, <pyrotech:material:20>]])
  .addTool(<ore:artisansSpanner>, 75)
  .addOutput(<factorytech:magnetizer>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:ingotIronCompressed>, <ore:wool>, <ore:ingotIronCompressed>],
    [<ore:lightPlateGold>, <minecraft:piston>, <ore:lightPlateGold>],
    [<ore:ingotIronCompressed>, <pneumaticcraft:pressure_tube>, <ore:ingotIronCompressed>]])
  .addTool(<ore:artisansSpanner>, 75)
  .addOutput(<pneumaticcraft:vortex_tube>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:blockGlass>, <ore:heavyPlateLead>, <ore:blockGlass>],
    [<ore:blockGlass>, <pyrotech:brick_tank>, <ore:blockGlass>],
    [<ore:ingotIronCompressed>, <ore:ingotIronCompressed>, <ore:ingotIronCompressed>]])
  .addTool(<ore:artisansSpanner>, 50)
  .addOutput(<pneumaticcraft:plastic_mixer>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:ingotIronCompressed>, <ore:dustRedstone>, <ore:ingotIronCompressed>],
    [<magneticraft:small_tank>, <ore:dustRedstone>, <magneticraft:small_tank>],
    [<ore:ingotIronCompressed>, <pneumaticcraft:pressure_tube>, <ore:ingotIronCompressed>]])
  .addTool(<ore:artisansSpanner>, 50)
  .addOutput(<pneumaticcraft:thermopneumatic_processing_plant>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:squareBlue>, <ore:lightPlateIron>],
    [<ore:squareBlue>, <ore:squareBlue>]])
  .addOutput(<multiblocked:multiblock_builder>)
  .create();

val worktableDef as IItemDefinition = <artisanworktables:worktable>.definition;
for i in 0 .. 15 {
  if (i != 6) {
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
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:ingotIron>, <ore:dustRedstone>, <ore:ingotIron>],
    [<ore:plasticLightBlue>, <ore:dustRedstone>, <ore:plasticLightBlue>],
    [<ore:ingotIron>, <ore:plasticBlue>, <ore:ingotIron>]])
  .addTool(<contenttweaker:hot_air_solderer>, 50)
  .addOutput(<buildinggadgets:buildingtool>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:ingotIron>, <ore:dustRedstone>, <ore:ingotIron>],
    [<ore:plasticLightBlue>, <ore:plasticBlue>, <ore:plasticLightBlue>],
    [<ore:ingotIron>, <ore:plasticBlue>, <ore:ingotIron>]])
  .addTool(<contenttweaker:hot_air_solderer>, 50)
  .addOutput(<buildinggadgets:exchangertool>)
  .create();

RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:ingotIron>, <minecraft:redstone>, <ore:ingotIron>],
    [<minecraft:ender_pearl>, <minecraft:redstone>, <minecraft:ender_pearl>],
    [<ore:ingotIron>, <ore:plasticBlue>, <ore:ingotIron>]])
  .addTool(<contenttweaker:hot_air_solderer>, 50)
  .addOutput(<buildinggadgets:destructiontool>)
  .create();

val gadgets as IItemStack[] = [
  <buildinggadgets:buildingtool>,
  <buildinggadgets:exchangertool>,
  <buildinggadgets:copypastetool>,
  <buildinggadgets:destructiontool>,
];

for gadget in gadgets {
  RecipeBuilder.get("engineer")
  .setShapeless([gadget.withDamage(32767).marked("t")]) // 32767 -> meta wildcard
  .setFluid(<liquid:light_oil> * 500)
  .addOutput(gadget)
  .setRecipeFunction(function(out, ins, info) {
    return ins.t.withDamage(min(0, ins.t.damage - 2000));
  })
  .create();
}
}
