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
    <thaumcraft:filter>*2,
    <thaumcraft:condenser_lattice>
];


if(!isInvalid){
    for item in toRemove {
        ArcaneWorkbench.removeRecipe(item);
    }
}
