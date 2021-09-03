#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import mods.requious.SlotVisual;
import mods.requious.AssemblyRecipe;
import mods.requious.MachineContainer;

import scripts.hds_main.utils.modloader.isInvalid;

var sluice = <assembly:sluice>;

sluice.addJEICatalyst(<factorytech:sluice>);
sluice.setJEIDurationSlot(4, 2, "duration", SlotVisual.arrowDown());
sluice.setJEIItemSlot(4, 3 ,"output");

if(!isInvalid) {

var sluiceRecipeFish = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output", <minecraft:fish>);
})
.requireDuration("duration", 120);

var sluiceRecipeCrystal = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output", <contenttweaker:wood_feather_crystal>);
})
.requireDuration("duration", 120);

sluice.addJEIRecipe(sluiceRecipeFish);
sluice.addJEIRecipe(sluiceRecipeCrystal);
}
