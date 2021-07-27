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
    [<thaumcraft:log_silverwood>, <thaumcraft:log_silverwood>, <thaumcraft:log_silverwood>],
    [<magneticraft:iron_pipe>, <magneticraft:iron_pipe>, <magneticraft:iron_pipe>],
    [<thaumcraft:log_silverwood>, <thaumcraft:log_silverwood>, <thaumcraft:log_silverwood>]])
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
}