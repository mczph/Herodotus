#packmode normal
#loader multiblocked
#priority -1

import mods.multiblocked.recipe.RecipeMap;
import mods.thaumcraft.AspectStack;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){
    val map as RecipeMap = <mbd:recipe_map:basic_thermal_melting_machine>;

    map.start()
        .duration(300)
        .inputItems(<contenttweaker:rhythmic_seed>)
        .inputFluids(<liquid:red_t2> * 1000)
        .inputHotAir(250)
        .outputAspects(AspectStack("ignis", 40))
        .buildAndRegister();

    map.start()
        .duration(300)
        .inputItems(<contenttweaker:rhythmic_seed>)
        .inputFluids(<liquid:yellow_t2> * 1000)
        .inputHotAir(250)
        .outputAspects(AspectStack("aer", 40))
        .buildAndRegister();

    map.start()
        .duration(300)
        .inputItems(<contenttweaker:rhythmic_seed>)
        .inputFluids(<liquid:blue_t2> * 1000)
        .inputHotAir(250)
        .outputAspects(AspectStack("aqua", 40))
        .buildAndRegister();

    map.start()
        .duration(1500)
        .inputItems(<contenttweaker:rhythmic_seed> * 5, <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: "vitium"}]}))
        .inputHotAir(250)
        .outputAspects(AspectStack("perditio", 200))
        .buildAndRegister();

    map.start()
        .duration(300)
        .inputItems(<contenttweaker:rhythmic_seed>)
        .inputFluids(<liquid:flux_goo> * 200)
        .inputHotAir(250)
        .outputAspects(AspectStack("vitium", 40))
        .outputFluids(<liquid:unstable_aura> * 1000)
        .buildAndRegister();

    map.start()
        .duration(300)
        .inputItems(<contenttweaker:rhythmic_seed>, <ore:dirt> * 16)
        .inputFluids(<liquid:unstable_aura> * 200)
        .inputHotAir(250)
        .outputAspects(AspectStack("terra", 40))
        .buildAndRegister();

    map.start()
        .duration(300)
        .inputItems(<contenttweaker:rhythmic_seed>, <thaumcraft:stone_ancient_rock> * 16)
        .inputFluids(<liquid:unstable_aura> * 200)
        .inputHotAir(250)
        .outputAspects(AspectStack("alienis", 40))
        .buildAndRegister();

    map.start()
        .duration(300)
        .inputItems(<contenttweaker:flesh_bolus>)
        .inputFluids(<liquid:taint_nutrition> * 100)
        .inputHotAir(250)
        .outputFluids(<liquid:lifeessence> * 500)
        .outputAspects(AspectStack("vitium", 40))
        .buildAndRegister();
}