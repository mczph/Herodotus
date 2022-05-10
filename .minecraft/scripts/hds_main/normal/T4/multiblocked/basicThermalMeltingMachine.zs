#packmode normal
#loader multiblocked
#priority -1

import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import mods.multiblocked.recipe.RecipeMap;
import mods.multiblocked.recipe.RecipeBuilder;
import mods.thaumcraft.AspectStack;
import scripts.hds_lib.crtlib;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){
    val map as RecipeMap = <mbd:recipe_map:basic_thermal_melting_machine>;
    val aspectRecipesBuilder as RecipeBuilder = map.start()
        .duration(300)
        .inputItems(<thaumcraft:alumentum> * 8)
        .inputFluids(<liquid:fluid_mana> * 2000)
        .inputHotAir(250);

    for color, lColor in crtlib.colorsMap {
        aspectRecipesBuilder.copy().inputItems(crtlib.refinedBottleGetter(color ~ "_primordial_actived"))
            .outputAspects(AspectStack(lColor, 50))
            .buildAndRegister();
    }

    for shape, lShape in crtlib.shapesMap {
        aspectRecipesBuilder.copy().inputItems(oreDict.get(shape ~ "PrimordialActived"))
            .outputAspects(AspectStack(lShape, 50))
            .buildAndRegister();
    }
}
