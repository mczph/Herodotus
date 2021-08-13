#packmode normal
#priority -1

import crafttweaker.world.IWorld;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

import mods.requious.SlotVisual;
import mods.requious.ComponentFace;
import mods.requious.AssemblyRecipe;
import mods.requious.MachineContainer;

import scripts.hds_lib.crtlib.maxInt;
import scripts.hds_main.utils.modloader.isInvalid;

var abm = <assembly:aura_bottling_machine>;

abm.setItemSlot(2, 2, ComponentFace.front(), 64)
    .setHandAccess(true, true)
    .setAccess(true, false)
    .setGroup("input");
abm.setFluidSlot(4, 2, ComponentFace.up(), 1000)
    .allowBucket(true, false)
    .setAccess(true, false)
    .setGroup("input");
abm.setDurationSlot(5, 2)
    .setVisual(SlotVisual.arrowRight())
    .setGroup("input");
abm.setItemSlot(6, 2, ComponentFace.back(), 64)
    .setHandAccess(false, true)
    .setAccess(false, true)
    .pushItem(1)
    .setGroup("output");

abm.setJEIItemSlot(2,2,"input");
abm.setJEIFluidSlot(4,2,"input");
abm.setJEIDurationSlot(5,2, "duration", SlotVisual.arrowRight());
abm.setJEIItemSlot(6,2,"output");


if(!isInvalid) {

var bottledAura = AssemblyRecipe.create(function(container) {
    var machine as MachineContainer = container.machine;
    var world as IWorld = machine.world;
    container.addItemOutput("output", <contenttweaker:bottled_aura>);
    world.addFlux(machine.pos, world.random.nextInt(3, 5));})
    .requireItem("input", <thaumcraft:phial>)
    .requireFluid("input", <liquid:unstable_aura> * 1000)
    .requireDuration("input", 20 * 3);

var bottledAuraJEI = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output", <contenttweaker:bottled_aura>);})
    .requireItem("input", <thaumcraft:phial>)
    .requireFluid("input", <liquid:unstable_aura> * 1000)
    .requireDuration("input", 20 * 3);

abm.addRecipe(bottledAura);
abm.addJEIRecipe(bottledAuraJEI);
}
