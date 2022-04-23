#packmode normal
#loader multiblocked
#priority -1

import mods.multiblocked.recipe.RecipeMap;
import mods.thaumcraft.AspectStack;
import scripts.hds_main.utils.modloader.isInvalid;
import scripts.hds_lib.crtlib.basicAspects;

if (!isInvalid) {
    val map as RecipeMap = <mbd:recipe_map:aspect_blast_furnace>;

    map.start()
        .duration(240)
        .inputItems(<ore:ingotCopper>)
        .inputFluids(<liquid:yellow> * 500)
        .inputAspects(AspectStack("aer", 15), AspectStack("ignis", 15))
        .inputHotAir(250)
        .outputItems(<thaumcraft:ingot:2>)
        .buildAndRegister();

    map.start()
        .duration(200)
        .inputItems(<thaumcraft:plank_silverwood>)
        .inputHotAir(250)
        .inputFluids(<liquid:brass> * 36)
        .inputAspects(AspectStack("ignis", 10))
        .outputItems(<thaumadditions:brass_plated_silverwood>)
        .buildAndRegister();

    map.start()
        .duration(200)
        .inputFluids(<liquid:unstable_aura> * 200)
        .inputAspects(AspectStack("vitium", 25))
        .inputHotAir(250)
        .outputFluids(<liquid:unstable_mutation_agent> * 50)
        .buildAndRegister();

    map.start()
        .duration(300)
        .inputItems(<minecraft:glass_pane> * 4, <contenttweaker:rhythmic_seed>, <pneumaticcraft:plastic:5> * 4)
        .inputFluids(<liquid:brass> * 288)
        .inputAspects(AspectStack("aer", 40), AspectStack("ignis", 40))
        .inputHotAir(250)
        .outputItems(<thaumcraft:morphic_resonator>)
        .buildAndRegister();
    
    map.start()
        .duration(240)
        .inputItems(<thaumcraft:plank_greatwood>, <thaumcraft:tube>, <thaumcraft:tube_valve>, <thaumcraft:filter>)
        .inputFluids(<liquid:iron> * 288)
        .inputAspects(AspectStack("ordo", 40), AspectStack("perditio", 40))
        .inputHotAir(250)
        .outputItems(<thaumcraft:metal_alchemical>)
        .buildAndRegister();

    map.start()
        .duration(120)
        .inputItems(<ore:stone>)
        .inputAspects(AspectStack("ordo", 5))
        .outputItems(<thaumcraft:stone_arcane>)
        .inputHotAir(250)
        .buildAndRegister();

    for aspect in basicAspects {
        val name as string = aspect.internal.name.toLowerCase();
        map.start()
            .duration(30)
            .inputItems(<ore:foodSalt>)
            .inputAspects(AspectStack(name, 1))
            .outputItems(<thaumadditions:salt_essence>.withTag({Aspects: [{amount: 1, key: name}]}))
            .buildAndRegister();
    }
}
