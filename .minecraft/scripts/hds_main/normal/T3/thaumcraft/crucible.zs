#packmode normal
#priority -1

import scripts.hds_main.utils.modloader.isInvalid;
import mods.thaumcraft.Crucible;
import thaumcraft.aspect.CTAspectStack;
import scripts.hds_lib.crtlib;

if (!isInvalid) {
    Crucible.removeRecipe(<thaumcraft:ingot>);
    Crucible.removeRecipe(<thaumcraft:ingot:1>);
    Crucible.registerRecipe("thaumium_ingot_0", "", <thaumcraft:ingot>, <ore:ingotIron>, crtlib.getAllBasicAspects(200));
    Crucible.registerRecipe("rift_feed", "", <hdsutils:rift_feed>, <thaumcraft:stone_ancient_rock>, [
        <aspect:victus> * 15,
        <aspect:desiderium> * 15,
        <aspect:vitium> * 80
    ]);

    for aspect in crtlib.allAspectCTAspectStack {
        var name as string = aspect.internal.name.toLowerCase();
        Crucible.removeRecipe(crtlib.tcSeedGetter(name));
        Crucible.removeRecipe(crtlib.tcCrystalGetter(name));
        Crucible.registerRecipe(name ~ "_vis_seed", "", crtlib.tcSeedGetter(name), <contenttweaker:basic_vis_seed>, [
            aspect * 20,
            <aspect:herba> * 10
        ]);
    }
}
