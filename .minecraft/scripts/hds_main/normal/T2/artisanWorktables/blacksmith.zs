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
    [<ore:cobblestoneCharred>, <ore:lightPlateGold>, <ore:cobblestoneCharred>],
    [<ore:lightPlateGold>, <pyrotech:refractory_brick_block>, <ore:lightPlateGold>],
    [<ore:cobblestoneCharred>, <ore:lightPlateGold>, <ore:cobblestoneCharred>]])
  .addTool(<contenttweaker:hot_air_solderer>, 60)
  .addOutput(<magneticraft:multiblock_parts:3> * 4)
  .create();

RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:ingotIron>, <ore:lightPlateIron>, <ore:ingotIron>],
    [<ore:ingotIron>, <magneticraft:crafting:2>, <ore:ingotIron>],
    [<ore:ingotLead>, <ore:lightPlateLead>, <ore:ingotLead>]])
  .addTool(<contenttweaker:hot_air_solderer>, 200)
  .addOutput(<magneticraft:multiblock_parts>)
  .create();

// TODO: <magneticraft:multiblock_parts:1> recipes (electric)

RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:lightPlateIron>, <ore:ingotIron>, <ore:lightPlateIron>],
    [<ore:ingotIron>, null, <ore:ingotIron>],
    [<ore:lightPlateIron>, <ore:ingotIron>, <ore:lightPlateIron>]])
  .addTool(<contenttweaker:hot_air_solderer>, 60)
  .addOutput(<magneticraft:multiblock_parts:5> * 8)
  .create();

RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ore:ingotLead>, <ore:plateLead>, <ore:ingotLead>],
    [<ore:lightPlateIron>, <pyrotech:refractory_brick_block>, <ore:lightPlateIron>],
    [<ore:ingotLead>, <ore:plateLead>, <ore:ingotLead>]])
  .addTool(<contenttweaker:hot_air_solderer>, 60)
  .addOutput(<magneticraft:multiblock_column> * 4)
  .create();
}