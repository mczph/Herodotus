#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.requious.ComponentFace;
import mods.requious.SlotVisual;
import mods.requious.AssemblyRecipe;
import scripts.hds_lib.crtlib.maxInt;
import scripts.hds_main.utils.modloader.isInvalid;

var abm = <assembly:aura_bottling_machine>;

abm.setItemSlot(3,3, ComponentFace.front(), 64)
    .setHandAccess(true, true)
    .setAccess(true, false)
    .setGroup("input");
abm.setFluidSlot(5,3, ComponentFace.up(), 1000)
    .allowBucket(true, false)
    .setAccess(true, false)
    .setGroup("input");
abm.setDurationSlot(5,3);
abm.setItemSlot(7,3, ComponentFace.back(), 64)
    .setHandAccess(false, true)
    .setAccess(false, true)
    .pushItem(1)
    .setGroup("output");

if(!isInvalid){

var bottledAura = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output", <contenttweaker:bottled_aura>);})
        .requireItem("input", <thaumcraft:phial>)
        .requireFluid("input", <liquid:unstable_aura> * 1000);


abm.addRecipe(bottledAura);
}
