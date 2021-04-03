#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.inworldcrafting.FluidToFluid;
import mods.inworldcrafting.FluidToItem;
import mods.pyrotech.SoakingPot;
import mods.pyrotech.IroncladAnvil;
import mods.pyrotech.BrickCrucible;
import mods.pyrotech.BrickKiln;
import mods.tconstruct.Casting;
import mods.prodigytech.rotarygrinder;
import mods.pneumaticcraft.pressurechamber;
import scripts.grassUtils.StringHelper;
import scripts.hds_main.normal.T1.pyrotech.ptFunctions.allPyroAnvil;
import scripts.hds_main.utils.modloader.isInvalid;

static colors as string[] = ["red", "yellow", "blue"];
static shapes as string[] = ["rhombus", "spherical", "square"];

function getColorEssences(color as string, tier as int) as ILiquidStack {
    return game.getLiquid(color ~ "_t" ~ tier);
}

function getShapeVariant(shape as string, variant as string) as IItemStack {
    return itemUtils.getItem("contenttweaker:" + shape + "_" + variant);
}

function getColorlessShape(shape as string) as IOreDictEntry {
    if (shape.equalsIgnoreCase("Rhombus")) {
        return <contenttweaker:rhombus>;
    }
    if (shape.equalsIgnoreCase("Spherical")) {
        return <contenttweaker:spherical>;
    }
    if (shape.equalsIgnoreCase("Square")) {
        return <contenttweaker:square>;
    }
    logger.logError("invalid shape: " ~ shape);
    return null;
}

if (!isInvalid){

for color in colors {
    val od as string = StringHelper.toUpperCamelCase(color);
    val ore as IOreDictEntry = oreDict.get("ore" ~ od);
    val poorOre as IOreDictEntry = oreDict.get("poorOre" ~ od);
    val denseOre as IOreDictEntry = oreDict.get("denseOre" ~ od);
    val fluidTier1 as ILiquidStack = getColorEssences(color, 1);
    val fluidTier2 as ILiquidStack = getColorEssences(color, 2);
    val crushedOre as IOreDictEntry = oreDict.get("crushedOre" ~ od);
    val clump as IOreDictEntry = oreDict.get("clump" ~ od);
    val dust as IOreDictEntry = oreDict.get("dust" ~ od);

    allPyroAnvil(color ~ "_from_poor_ore", crushedOre.materialPart, poorOre, 8, "pickaxe");
    allPyroAnvil(color ~ "_from_ore", crushedOre.materialPart * 2, ore, 8, "pickaxe");
    allPyroAnvil(color ~ "_from_dense_ore", crushedOre.materialPart * 4, denseOre, 12, "pickaxe");

    FluidToFluid.transform(fluidTier1, <liquid:limewater>, [poorOre * 3]);
    FluidToFluid.transform(fluidTier1, <liquid:limewater>, [ore]);
    FluidToFluid.transform(fluidTier1, <liquid:limewater>, [denseOre]);
    FluidToFluid.transform(fluidTier1, <liquid:limewater>, [crushedOre]);

    SoakingPot.addRecipe("dye_t2_" ~ color, clump.materialPart, fluidTier1*500, crushedOre, true, 20*20);
    BrickCrucible.addRecipe("dye_t2_melt_" ~ color, fluidTier2*500, clump, 60*20);
    rotarygrinder.addRecipe(crushedOre, dust.materialPart);

    // remove other dust crafting
    mods.astralsorcery.Grindstone.removeRecipe(dust.materialPart);
    
    for shape in shapes {
        var output as IItemStack = oreDict.get(shape ~ od).materialPart;
        var output2 as IItemStack = oreDict.get(shape ~ "TierTwo" ~ od).materialPart;
        var input1 as IOreDictEntry = getColorlessShape(shape);
        var input2 as IItemStack = itemUtils.getItem("contenttweaker:polished_" ~ shape);
        var input3 as IOreDictEntry = oreDict.get(shape ~ "Cover" ~ od);
        var input4 as IItemStack = getShapeVariant(shape, "polluted");
        SoakingPot.addRecipe(shape ~ "_soaking_" ~ color, output, fluidTier1*500, input1, true, 4.5*60*20);
        Casting.addTableRecipe(output, input2, fluidTier2, 250, true, 20 * 20);
        RecipeBuilder.get("mason")
            .setShapeless([input2, dust])
            .addTool(<ore:artisansTrowel>, 4)
            .addOutput(input3.materialPart)
            .create();
        BrickKiln.addRecipe(shape ~ "_kiln_" ~ color, output, input3, 2.5 * 60 * 20);
        pressurechamber.addRecipe([input4, dust, <contenttweaker:primordium_shard>], 0.0 - 0.5, [output2, <thermalfoundation:material:833>]);
        pressurechamber.addRecipe([input4 * 48, dust.materialPart * 48, <prodigytech:primordium>], 0.0 - 0.5, [output2 * 48, <thermalfoundation:material:833> * 48]);
    }
}

// misc

FluidToItem.transform(<contenttweaker:black_dye> * 3, getColorEssences("red", 2), [<ore:clumpYellow>, <ore:clumpBlue>], true);
FluidToItem.transform(<contenttweaker:black_dye> * 3, getColorEssences("yellow", 2), [<ore:clumpRed>, <ore:clumpBlue>], true);
FluidToItem.transform(<contenttweaker:black_dye> * 3, getColorEssences("blue", 2), [<ore:clumpRed>, <ore:clumpYellow>], true);
}
