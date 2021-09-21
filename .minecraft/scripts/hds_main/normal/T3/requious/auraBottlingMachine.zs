#packmode normal
#priority -1

import crafttweaker.world.IWorld;

import mods.requious.SlotVisual;
import mods.requious.ComponentFace;
import mods.requious.AssemblyRecipe;

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
abm.setJEIItemSlot(6,2,"output");
abm.setJEIDurationSlot(5,2, "duration", SlotVisual.arrowRight());


if(!isInvalid) {

var bottledAura = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output", <contenttweaker:bottled_aura>);
    
    if(!container.jei) {
        container.addWorldOutput(function(machine) {
            var world as IWorld = machine.world;
            world.addFlux(machine.pos, world.random.nextInt(3, 5));
            return true;
        });
    }
})
.requireItem("input", <thaumcraft:phial>)
.requireFluid("input", <liquid:unstable_aura> * 1000)
.requireDuration("input", 20 * 3);

abm.addRecipe(bottledAura);
abm.addJEIRecipe(bottledAura);
}
