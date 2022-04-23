#packmode normal
#loader multiblocked
#priority -1

import mods.multiblocked.recipe.RecipeMap;
import scripts.hds_main.utils.modloader.isInvalid;

if (!isInvalid) {
    val map as RecipeMap = <mbd:recipe_map:steamer>;

    map.start()
        .duration(40)
        .inputItems(<ore:dirtyDustRedstone>)
        .inputFluids(<liquid:steam> * 500)
        .outputItems(<minecraft:redstone>)
        .buildAndRegister();

    map.start()
        .duration(40)
        .inputItems(<ore:dirtyDustQuartz>)
        .inputFluids(<liquid:steam> * 500)
        .outputItems(<ore:dustQuartz>.materialPart)
        .buildAndRegister();

    map.start()
        .duration(120)
        .inputItems(<minecraft:reeds>)
        .inputFluids(<liquid:steam> * 500)
        .outputItems(<pyrotech:material:25>)
        .buildAndRegister();

    map.start()
        .duration(150)
        .inputItems(<ore:dustWood>)
        .inputFluids(<liquid:steam> * 500)
        .outputItems(<pyrotech:material:25>)
        .buildAndRegister();

    map.start()
        .duration(100)
        .inputItems(<ore:dustRed> * 2)
        .inputFluids(<liquid:steam> * 500)
        .outputItems(<ore:clumpRed>.materialPart)
        .buildAndRegister();

    map.start()
        .duration(100)
        .inputItems(<ore:dustYellow> * 2)
        .inputFluids(<liquid:steam> * 500)
        .outputItems(<ore:clumpYellow>.materialPart)
        .buildAndRegister();

    map.start()
        .duration(100)
        .inputItems(<ore:dustBlue> * 2)
        .inputFluids(<liquid:steam> * 500)
        .outputItems(<ore:clumpBlue>.materialPart)
        .buildAndRegister();
}
