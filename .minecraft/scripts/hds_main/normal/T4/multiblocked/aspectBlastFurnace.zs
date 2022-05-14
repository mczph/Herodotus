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
    val map as RecipeMap = <mbd:recipe_map:aspect_blast_furnace>;
    val mercuryRecipesBuilder as RecipeBuilder = map.start()
        .duration(300)
        .inputFluids(<liquid:mercury> * 1000)
        .inputHotAir(250);

    for color, lColor in crtlib.colorsMap {
        mercuryRecipesBuilder.copy()
            .inputAspects(AspectStack(lColor, 50))
            .outputFluids(game.getLiquid(color ~ "_mercury_suspension") * 1000)
            .buildAndRegister();
    }

    for shape, lShape in crtlib.shapesMap {
        mercuryRecipesBuilder.copy()
            .inputAspects(AspectStack(lShape, 50))
            .outputFluids(game.getLiquid(shape ~ "_mercury_suspension") * 1000)
            .buildAndRegister();
    }
}
