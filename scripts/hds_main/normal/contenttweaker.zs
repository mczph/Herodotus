#packmode normal
#priority -1
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.inworldcrafting.FluidToFluid;
import mods.pyrotech.SoakingPot;
import scripts.grassUtils.StringHelper;

val colors as string[] = ["red", "yellow", "blue"];
val shapes as string[] = ["rhombus", "spherical", "square"];

function getColorEssences(color as string, tier as int) as ILiquidStack {
    return game.getLiquid(color ~ "_t" ~ tier);
}

function getColorlessShape(shape as string) as IOreDictEntry {
    if (shape.equalsIgnoreCase("Rhombus")) {
        return <ore:rhombusRhombus>;
    }
    if (shape.equalsIgnoreCase("Spherical")) {
        return <ore:sphericalSpherical>;
    }
    if (shape.equalsIgnoreCase("Square")) {
        return <ore:squareSquare>;
    }
    logger.logError("invalid shape: " ~ shape);
    return null;
}

for color in colors {
    val od as string = StringHelper.toUpperCamelCase(color);
    val ore as IOreDictEntry = oreDict.get("ore" ~ od);
    val poorOre as IOreDictEntry = oreDict.get("poorOre" ~ od);
    val denseOre as IOreDictEntry = oreDict.get("denseOre" ~ od);
    val fluidTier1 as ILiquidStack = getColorEssences(color, 1);

    FluidToFluid.transform(fluidTier1, <liquid:limewater>, [poorOre * 3]);
    FluidToFluid.transform(fluidTier1, <liquid:limewater>, [ore]);
    FluidToFluid.transform(fluidTier1, <liquid:limewater>, [denseOre]);

    for shape in shapes {
        SoakingPot.addRecipe(shape ~ "_soaking_" ~ color, oreDict.get(shape ~ od).firstItem, fluidTier1 * 1000, getColorlessShape(shape), true, 2 * 60 * 20);
    }
}
