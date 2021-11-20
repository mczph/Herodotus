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
    Crucible.removeRecipe(<thaumcraft:ingot:1>);
    Crucible.registerRecipe("thaumium_ingot_0", "", <thaumcraft:ingot>, <ore:ingotIron>, getAllBasicAspects(200));
    Crucible.registerRecipe("rift_feed", "", <hdsutils:rift_feed>, <thaumcraft:stone_ancient_rock>, [
        <aspect:victus> * 15,
        <aspect:desiderium> * 15,
        <aspect:vitium> * 80
    ]);
}
