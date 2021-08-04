#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid) {
RecipeBuilder.get("mage")
  .setShapeless([<ore:treeSapling>, <contenttweaker:rhythmic_seed>])
  .setFluid(<liquid:mercury> * 1000)
  .addTool(<ore:artisansGrimoire>, 50)
  .addOutput(<thaumcraft:sapling_silverwood>)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<thaumcraft:plank_silverwood>, <thaumcraft:plank_silverwood>, <thaumcraft:plank_silverwood>],
    [<magneticraft:iron_pipe>, <magneticraft:iron_pipe>, <magneticraft:iron_pipe>],
    [<thaumcraft:plank_silverwood>, <thaumcraft:plank_silverwood>, <thaumcraft:plank_silverwood>]])
  .setFluid(<liquid:mercury> * 1000)
  .addTool(<ore:artisansGrimoire>, 30)
  .addOutput(<thaumcraft:tube> * 8)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<ore:ingotIronCompressed>, <thaumcraft:log_silverwood>, <ore:ingotIronCompressed>],
    [null, <ore:clumpBlue>, null],
    [<ore:ingotIronCompressed>, <thaumcraft:tube>, <ore:ingotIronCompressed>]])
  .setFluid(<liquid:mercury> * 1000)
  .addTool(<ore:artisansAthame>, 30)
  .addOutput(<modularmagic:blockaspectproviderinput>)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<ore:ingotIronCompressed>, <thaumcraft:log_silverwood>, <ore:ingotIronCompressed>],
    [null, <ore:clumpYellow>, null],
    [<ore:ingotIronCompressed>, <thaumcraft:tube>, <ore:ingotIronCompressed>]])
  .setFluid(<liquid:mercury> * 1000)
  .addTool(<ore:artisansAthame>, 30)
  .addOutput(<modularmagic:blockaspectprovideroutput>)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<ore:ingotGold>, <thaumadditions:brass_plated_silverwood>, <ore:ingotGold>]])
  .setFluid(<liquid:mercury> * 1000)
  .addTool(<ore:artisansGrimoire>, 30)
  .addOutput(<thaumcraft:filter> * 2)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<ore:gemQuartz>, <ore:lightPlateLead>, <ore:gemQuartz>],
    [<ore:gemQuartz>, <thaumcraft:filter>, <ore:gemQuartz>],
    [<ore:gemQuartz>, <ore:lightPlateLead>, <ore:gemQuartz>]])
  .setFluid(<liquid:mercury> * 2000)
  .addTool(<ore:artisansGrimoire>, 50)
  .addOutput(<thaumcraft:condenser_lattice>)
  .create();

RecipeBuilder.get("mage")
  .setShapeless([
    <thaumadditions:salt_essence>.withTag({Aspects: [{amount: 1, key: "aer"}]}),
    <thaumadditions:salt_essence>.withTag({Aspects: [{amount: 1, key: "terra"}]}),
    <thaumadditions:salt_essence>.withTag({Aspects: [{amount: 1, key: "ignis"}]}),
    <thaumadditions:salt_essence>.withTag({Aspects: [{amount: 1, key: "aqua"}]}),
    <thaumadditions:salt_essence>.withTag({Aspects: [{amount: 1, key: "ordo"}]}),
    <thaumadditions:salt_essence>.withTag({Aspects: [{amount: 1, key: "perditio"}]})])
  .addTool(<ore:artisansMortar>, 50)
  .addOutput(<thaumcraft:salis_mundus> * 7)
  .create();
}
