#packmode normal
#priority -1

import scripts.hds_main.utils.modloader.isInvalid;
import mods.thaumcraft.Infusion;
import crafttweaker.item.IItemStack;

val removeList as IItemStack[] = [
    <thaumicaugmentation:rift_mover_input>,
    <thaumicwonders:void_fortress_helm>,
    <thaumcraft:void_robe_chest>,
    <thaumicwonders:void_fortress_chest>,
    <thaumadditions:void_elemental_axe>,
    <thaumicaugmentation:impulse_cannon>,
    <thaumicaugmentation:impetus_mirror>,
    <thaumadditions:void_elemental_pickaxe>,
    <thaumicaugmentation:material:3>,
    <thaumadditions:wormhole_mirror>,
    <thaumicwonders:void_beacon>,
    <thaumicwonders:madness_engine>,
    <thaumadditions:void_anvil>,
    <thaumicwonders:primal_destroyer>,
    <thaumicaugmentation:void_boots>,
    <thaumicwonders:primordial_accelerator>,
    <thaumicwonders:void_fortress_legs>,
    <thaumcraft:void_robe_legs>,
    <thaumicaugmentation:rift_mover_input>,
    <thaumicaugmentation:elytra_harness>,
    <thaumicaugmentation:gauntlet:1>,
    <thaumadditions:void_elemental_shovel>,
    <thaumicaugmentation:elytra_harness_augment>,
    <thaumadditions:void_thaumometer>,
    <thaumadditions:mithrillium_ingot>,
    <thaumadditions:void_elemental_hoe>,
    <thaumicaugmentation:rift_mover_output>,
    <thaumadditions:aspect_combiner>,
    <thaumcraft:causality_collapser>

];


if (!isInvalid) {

    for remove in removeList {
        Infusion.removeRecipe(remove);
    }
}
