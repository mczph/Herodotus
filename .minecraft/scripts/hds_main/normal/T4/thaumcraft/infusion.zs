#packmode normal
#priority -1

import scripts.hds_main.utils.modloader.isInvalid;
import mods.thaumcraft.Infusion;
import thaumcraft.aspect.CTAspectStack;
import scripts.hds_lib.crtlib;
import scripts.grassUtils.StringHelper.toUpperCamelCase;


if (!isInvalid) {
    Infusion.registerRecipe("rock_crystal", "", crtlib.asRockCrystalGetter(), 5,
        [
            <aspect:vitreus> * 300,
            <aspect:lux> * 50,
            <aspect:victus> * 50,
            <aspect:perditio> * 100
        ],
        <ore:oreGlass>,
        [
            <ore:gemChippedGlimmerite>, <ore:gemChippedGlimmerite>, <ore:gemChippedGlimmerite>, <ore:gemChippedGlimmerite>,
            <ore:gemChippedGlimmerite>, <ore:gemChippedGlimmerite>, <ore:gemChippedGlimmerite>, <ore:gemChippedGlimmerite>,
            <ore:gemFlawedGlimmerite>, <ore:gemFlawedGlimmerite>, <ore:gemFlawedGlimmerite>, <ore:gemFlawedGlimmerite>,
            <ore:gemFlawlessGlimmerite>, <ore:gemFlawlessGlimmerite>
    ]);

    //TODO aspects
    for shape in crtlib.shapes {
        Infusion.registerRecipe("primo_shape_" ~ shape, "", itemUtils.getItem("contenttweaker:primordial_" ~ shape), 5,
        [

        ],
        crtlib.asRockCrystalGetter(),
        [
            oreDict.get(shape ~ "TierTwoBlue"),
            oreDict.get(shape ~ "TierTwoYellow"),
            oreDict.get(shape ~ "TierTwoRed"),
            <contenttweaker:primordial_pearl_dust>
        ]);
    }

    for color in crtlib.colors {
        Infusion.registerRecipe("primo_color_" ~ color, "", crtlib.refinedBottleGetter(color ~ "_primordial"), 5,
        [
            
        ],
        crtlib.refinedBottleGetter("universal_alchemical_solvent"),
        [
            oreDict.get("ore" ~ toUpperCamelCase(color)),
            oreDict.get("poorOre" ~ toUpperCamelCase(color)),
            oreDict.get("denseOre" ~ toUpperCamelCase(color)),
            <contenttweaker:primordial_pearl_dust>,
            <contenttweaker:black_dye>
        ]);
    }

    Infusion.registerRecipe("laputashard", "", <botania:laputashard>, 5,
        [
            
        ],
        <thaumcraft:primordial_pearl>,
        [
            crtlib.refinedBottleGetter("red_primordial"),
            crtlib.refinedBottleGetter("yellow_primordial"),
            crtlib.refinedBottleGetter("blue_primordial"),
            <contenttweaker:primordial_square>,
            <contenttweaker:primordial_rhombus>,
            <contenttweaker:primordial_spherical>,
            <contenttweaker:resurrected_meat>
    ]);
}
