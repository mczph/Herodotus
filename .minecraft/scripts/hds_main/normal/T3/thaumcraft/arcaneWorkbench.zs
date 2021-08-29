#packmode normal
#priority -1

import scripts.hds_main.utils.modloader.isInvalid;
import mods.thaumcraft.ArcaneWorkbench;
import crafttweaker.item.IItemStack;

val toRemove as IItemStack[] = [
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
    <thaumcraft:essentia_input>
];


if(!isInvalid){
    for item in toRemove {
        ArcaneWorkbench.removeRecipe(item);
    }
}
