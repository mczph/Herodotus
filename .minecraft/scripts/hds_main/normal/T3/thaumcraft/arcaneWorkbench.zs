#packmode normal
#priority -1

import scripts.hds_main.utils.modloader.isInvalid;
import mods.thaumcraft.ArcaneWorkbench;
import crafttweaker.item.IItemStack;

static toRemove as [IItemStack] = [
    <thaumcraft:tube>,
    <thaumicaugmentation:glass_tube>,
    <thaumcraft:tube_restrict>,
    <thaumcraft:tube_oneway>,
    <thaumcraft:tube_filter>,
    <thaumcraft:tube_valve>,
    <thaumcraft:filter>*2,
    <thaumcraft:condenser_lattice>,
    <thaumcraft:thaumometer>,
    <thaumcraft:resonator>,
    <thaumcraft:condenser>,
    <thaumcraft:morphic_resonator>,
    <thaumcraft:metal_alchemical>,
    <thaumcraft:centrifuge>,
    <thaumcraft:mechanism_simple>,
    <thaumcraft:essentia_output>,
    <thaumcraft:essentia_input>,
    <thaumcraft:jar_normal>,
    <thaumcraft:sanity_checker>,
    <thaumcraft:smelter_void>,
    <thaumcraft:seal>,
    <thaumicaugmentation:void_recharge_pedestal>,
    <thaumicaugmentation:impetus_diffuser>,
    <thaumicaugmentation:impetus_drainer>,
    <thaumicaugmentation:impetus_gate>,
    <thaumicaugmentation:impetus_linker>,
    <thaumicaugmentation:impetus_relay>,
    <thaumicaugmentation:impulse_cannon_augment:1>,
    <thaumicaugmentation:impulse_cannon_augment>,
    <thaumicaugmentation:material:1>,
    <thaumcraft:metal_alchemical_advanced>,
    <thaumicwonders:dimensional_ripper>,
    <thaumicwonders:portal_anchor>,
    <thaumicwonders:flux_distiller>,
    <thaumicwonders:primordial_accelerator_tunnel>,
    <thaumicwonders:primordial_accelerator_terminus>,
    <thaumadditions:jar_eldritch>,
    <thaumcraft:smelter_basic>,
    <thaumcraft:smelter_thaumium>,
    <thaumcraft:smelter_void>,
    <thaumadditions:mithrillium_smelter>,
    <thaumadditions:adaminite_smelter>,
    <thaumadditions:mithminite_smelter>,
    <thaumadditions:jar_brass>,
    <thaumadditions:jar_thaumium>,
    <thaumcraft:goggles>
];


if(!isInvalid){
    for item in toRemove {
        ArcaneWorkbench.removeRecipe(item);
    }
}
