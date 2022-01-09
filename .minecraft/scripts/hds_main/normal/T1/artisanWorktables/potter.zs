#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){

RecipeBuilder.get("potter")
  .setShapeless([<ore:clay>, <ore:ingotMercury>, <ore:dustLead>, <ore:nitor>])
  .setFluid(<liquid:lifeessence> * 1000)
  .addTool(<ore:artisansCarver>, 20)
  .addOutput(<thaumcraft:seal>)
  .create();

}
