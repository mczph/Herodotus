#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid) {
RecipeBuilder.get("mason")
  .setShaped([
    [<contenttweaker:resurrected_meat>, <pyrotech:farmland_mulched>, <contenttweaker:resurrected_meat>],
    [<ore:plateThaumium>, <ore:redstoneRoot>, <ore:plateThaumium>],
    [<bloodmagic:slate>, <bloodmagic:blood_rune>, <bloodmagic:slate>]])
  .setFluid(<liquid:lifeessence> * 1000)
  .addTool(<ore:artisansHammer>, 75)
  .addOutput(<hdsutils:catalyzed_altar>)
  .create();
}
