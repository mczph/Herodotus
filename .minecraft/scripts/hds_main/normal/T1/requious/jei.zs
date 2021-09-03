#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import mods.requious.SlotVisual;
import mods.requious.AssemblyRecipe;
import mods.requious.MachineContainer;

import scripts.hds_main.utils.modloader.isInvalid;

var altar = <assembly:altar>;
var goldNugget as IItemStack = <ore:nuggetGold>.materialPart;

altar.addJEICatalyst(<contenttweaker:altar>);
altar.setJEIItemSlot(4, 1, "input");
altar.setJEIDurationSlot(4, 2, "duration", SlotVisual.arrowDown());
altar.setJEIItemSlot(4, 3 ,"output");

if(!isInvalid) {

var altarRecipeIron = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output", goldNugget);
})
.requireItem("input", <ore:ingotIron>.materialPart);

var altarRecipeCopper = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output", goldNugget);
})
.requireItem("input", <ore:ingotCopper>.materialPart);

var altarFrame2Well = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output", <astralsorcery:blockwell>);
})
.requireItem("input", <contenttweaker:starlight_frame>);

var altarGlassOre2StarMetal = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output", <astralsorcery:blockcustomore:1>);
})
.requireItem("input", <ore:oreGlass>.materialPart);

altar.addJEIRecipe(altarRecipeIron);
altar.addJEIRecipe(altarRecipeCopper);
altar.addJEIRecipe(altarFrame2Well);
altar.addJEIRecipe(altarGlassOre2StarMetal);
}
