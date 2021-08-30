#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import scripts.hds_lib.crtlib.maxInt;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){

RecipeBuilder.newBuilder("essentia_output", "aura_assembler", 240)
    .addItemInput(<ore:plateBrass>, 2)
    .addItemInput(<ore:blockGlowstone>)
    .addItemInput(<ore:ingotIronCompressed>, 3)
    .addItemInput(<contenttweaker:bottled_aura>*2)
    .addHotAirInput(250, maxInt, 250)
    .addItemOutput(<thaumcraft:essentia_output>)
    .build();

RecipeBuilder.newBuilder("essentia_input", "aura_assembler", 240)
    .addItemInput(<ore:plateBrass>, 2)
    .addItemInput(<ore:blockQuartz>)
    .addItemInput(<ore:ingotIronCompressed>, 3)
    .addItemInput(<contenttweaker:bottled_aura>*2)
    .addHotAirInput(250, maxInt, 250)
    .addItemOutput(<thaumcraft:essentia_input>)
    .build();

}
