#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import scripts.hds_lib.crtlib.maxInt;
import scripts.hds_lib.crtlib.basicAspects;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){


RecipeBuilder.newBuilder("brass", "aspect_blast_furnace", 240)
    .addItemInput(<ore:ingotCopper>)
    .addHotAirInput(250, 250, maxInt)
    .addFluidInput(<liquid:yellow_t2> * 500)
    .addAspectInput("aer", 15)
    .addAspectInput("ignis", 15)
    .addItemOutput(<thaumcraft:ingot:2>)
    .build();

RecipeBuilder.newBuilder("brass_plank", "aspect_blast_furnace", 200)
    .addItemInput(<thaumcraft:plank_silverwood>)
    .addHotAirInput(250, 250, maxInt)
    .addFluidInput(<liquid:brass> * 36)
    .addAspectInput("ignis", 10)
    .addItemOutput(<thaumadditions:brass_plated_silverwood>)
    .build();
RecipeBuilder.newBuilder("unstable_mutation_agent", "aspect_blast_furnace", 200)
    .addHotAirInput(250, 250, maxInt)
    .addFluidInput(<liquid:unstable_aura> * 300)
    .addAspectInput("vitium", 150)
    .addFluidOutput(<liquid:unstable_mutation_agent> * 500)
    .build();

RecipeBuilder.newBuilder("morphic_resonator", "aspect_blast_furnace", 300)
    .addHotAirInput(250, 250, maxInt)
    .addFluidInput(<liquid:brass> * 288)
    .addItemInput(<minecraft:glass_pane> * 4)
    .addItemInput(<contenttweaker:rhythmic_seed>)
    .addItemInput(<ore:plasticPurple>, 4)
    .addAspectInput("aer", 40)
    .addAspectInput("ignis", 40)
    .addItemOutput(<thaumcraft:morphic_resonator>)
    .build();

RecipeBuilder.newBuilder("metal_alchemical", "aspect_blast_furnace", 240)
    .addHotAirInput(250, 250, maxInt)
    .addFluidInput(<liquid:iron> * 288)
    .addItemInput(<thaumcraft:plank_greatwood>)
    .addItemInput(<thaumcraft:tube>)
    .addItemInput(<thaumcraft:tube_valve>)
    .addItemInput(<thaumcraft:filter>)
    .addAspectInput("ordo", 40)
    .addAspectInput("perditio", 40)
    .addItemOutput(<thaumcraft:metal_alchemical>)
    .build();

for aspect in basicAspects {
    val name as string = aspect.internal.name.toLowerCase();
    RecipeBuilder.newBuilder("salt_essence_" ~ name, "aspect_blast_furnace", 30)
        .addHotAirInput(120, 120, maxInt)
        .addItemInput(<ore:foodSalt>)
        .addAspectInput(name, 1)
        .addItemOutput(<thaumadditions:salt_essence>.withTag({Aspects: [{amount: 1, key: name}]}))
        .build();
}
}
