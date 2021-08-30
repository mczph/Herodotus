#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import mods.requious.SlotVisual;
import mods.requious.AssemblyRecipe;
import mods.requious.MachineContainer;

import scripts.hds_main.utils.modloader.isInvalid;

var altar = <assembly:altar>;

altar.addJEICatalyst(<contenttweaker:altar>);
altar.setJEIItemSlot(4, 1, "input");
altar.setJEIDurationSlot(4, 2, "duration", SlotVisual.arrowDown());
altar.setJEIItemSlot(4, 3 ,"output");

if(!isInvalid) {

var altarRecipeIron = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output", <ore:nuggetCopper>.materialPart);
})
.requireItem("input", <ore:ingotIron>.materialPart);

var altarRecipeCopper = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output", <ore:nuggetCopper>.materialPart);
})
.requireItem("input", <ore:ingotCopper>.materialPart);

altar.addJEIRecipe(altarRecipeIron);
altar.addJEIRecipe(altarRecipeCopper);
}
