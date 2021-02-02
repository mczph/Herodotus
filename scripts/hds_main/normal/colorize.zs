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
import scripts.grassUtils.StringHelper;

val colors as string[] = ["red", "yellow", "blue"];
val shapes as string[] = ["rhombus", "spherical", "square"];

function getColorEssences(color as string, tier as int) as ILiquidStack {
    return game.getLiquid(color ~ "_t" ~ tier);
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

    IroncladAnvil.addRecipe(color ~ "_from_poor_ore", crushedOre.firstItem, poorOre, 8, "pickaxe");
    IroncladAnvil.addRecipe(color ~ "_from_ore", crushedOre.firstItem * 2, ore, 8, "pickaxe");
    IroncladAnvil.addRecipe(color ~ "_from_dense_ore", crushedOre.firstItem * 4, ore, 12, "pickaxe");

    FluidToFluid.transform(fluidTier1, <liquid:limewater>, [poorOre * 3]);
    FluidToFluid.transform(fluidTier1, <liquid:limewater>, [ore]);
    FluidToFluid.transform(fluidTier1, <liquid:limewater>, [denseOre]);
    FluidToFluid.transform(fluidTier1, <liquid:limewater>, [crushedOre]);

    SoakingPot.addRecipe("dye_t2_" ~ color, clump.firstItem, fluidTier1*500, crushedOre, true, 20*20);
    BrickCrucible.addRecipe("dye_t2_melt_" ~ color, fluidTier2*500, clump, 60*20);
    rotarygrinder.addRecipe(crushedOre, dust.firstItem);
    
    for shape in shapes {
        var output as IItemStack = oreDict.get(shape ~ od).firstItem;
        var input1 as IOreDictEntry = getColorlessShape(shape);
        var input2 as IItemStack = itemUtils.getItem("contenttweaker:polished_" ~ shape);
        var input3 as IOreDictEntry = oreDict.get(shape ~ "Cover" ~ od);
        SoakingPot.addRecipe(shape ~ "_soaking_" ~ color, output, fluidTier1*500, input1, true, 5*60*20);
        Casting.addTableRecipe(output, input2, fluidTier2, 250, true, 3*60*20);
        RecipeBuilder.get("mason")
            .setShapeless([input2, dust])
            .addTool(<ore:artisansTrowel>, 4)
            .addOutput(input3.firstItem)
            .create();
        BrickKiln.addRecipe(shape ~ "_kiln_" ~ color, output, input3, 2.5 * 60 * 20);
    }
}
