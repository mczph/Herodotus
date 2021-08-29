#packmode normal
#priority -1

import scripts.hds_main.utils.modloader.isInvalid;
import mods.thaumcraft.Crucible;
import thaumcraft.aspect.CTAspectStack;

function getAllBasicAspects(amount as int) as CTAspectStack[] {
    return [
        <aspect:aer> * amount,
        <aspect:terra> * amount,
        <aspect:ignis> * amount,
        <aspect:aqua> * amount,
        <aspect:ordo> * amount,
        <aspect:perditio> * amount
    ];
}

if (!isInvalid) {
    Crucible.removeRecipe(<thaumcraft:ingot>);
    Crucible.registerRecipe("thaumium_ingot_0", "", <thaumcraft:ingot>, <ore:ingotIron>, getAllBasicAspects(200));
}