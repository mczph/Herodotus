#packmode normal
#priority -1

import scripts.hds_main.utils.modloader.isInvalid;
import mods.thaumcraft.Crucible;
import thaumcraft.aspect.CTAspectStack;
import scripts.hds_lib.crtlib;

if (!isInvalid) {
    val solventBottle = crtlib.refinedBottleGetter("universal_alchemical_solvent");
    val mercuryBottle = crtlib.refinedBottleGetter("mercury");
    Crucible.registerRecipe("alchemical_solvent", "", solventBottle, mercuryBottle, [
        <aspect:praecantatio> * 40,
        <aspect:potentia> * 20,
        <aspect:alkimia> * 80,
        <aspect:vacuos> * 20,
        <aspect:aqua> * 70
    ]);
}
