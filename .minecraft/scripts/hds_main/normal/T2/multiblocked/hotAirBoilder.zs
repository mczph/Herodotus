#packmode normal
#loader multiblocked
#priority -1

import scripts.hds_main.utils.modloader.isInvalid;
import scripts.grassUtils.EventUtils;
import crafttweaker.world.IBlockPos;
import crafttweaker.world.IFacing;
import crafttweaker.world.IWorld;
import crafttweaker.block.IBlockState;
import mods.multiblocked.MBDRegistry;
import mods.multiblocked.recipe.Recipe;
import mods.multiblocked.recipe.RecipeBuilder;
import mods.multiblocked.recipe.Status;
import mods.multiblocked.tile.Controller;
import mods.multiblocked.definition.ComponentDefinition;
import mods.multiblocked.definition.ControllerDefinition;

static dummyRecipe as Recipe = null;

if(!isInvalid){
    val builder as RecipeBuilder = <mbd:recipe_map:hot_air_boiler>.start()
        .duration(10)
        .inputFluids(<liquid:water> * 60)
        .inputHotAir(230)
        .outputFluids(<liquid:steam> * 600);
    
    builder.buildAndRegister();
    dummyRecipe = builder.copy().build();

    var definition as ComponentDefinition = MBDRegistry.getDefinition("herodotus:hot_air_boiler");
    if (definition instanceof ControllerDefinition) {
        var machine = definition as ControllerDefinition;
        machine.structureFormed = function(controller) {
            val facing as IFacing = controller.frontFacing;
            val world as IWorld = controller.world;
            val pos as IBlockPos = controller.pos;
            val n as int = 0 - 1;
            var x1 as int = 1;
            var y as int = 2;
            var z1 as int = 1;
            var x2 as int = n;
            var z2 as int = 1;
            if (facing == IFacing.south()) {
                z1 = n;
                z2 = n;
            } else if (facing == IFacing.west()) {
                x2 = 1;
                z2 = n;
            } else if (facing == IFacing.east()) {
                x1 = n;
                z1 = n;
            }
            var inf as IBlockState = <blockstate:contenttweaker:infinite_water_upgrade_module>;
            var block1 as IBlockState = world.getBlockState(EventUtils.getOffset(pos, x1, y, z1));
            var block2 as IBlockState = world.getBlockState(EventUtils.getOffset(pos, x2, y, z2));
            var hasInfUpdate as bool = block1 == inf || block2 == inf;
            controller.setExtraData({hasInfUpdate: hasInfUpdate});
        };
        machine.setupRecipe = function(logic, recipe) {
            if (recipe.uid == dummyRecipe.uid) {
                if (logic.controller.extraData.hasInfUpdate.asBool()) {
                    // skip io operation but force to set the recipe
                    logic.lastRecipe = recipe;
                    logic.setStatus(Status.WORKING);
                    logic.progress = 0;
                    logic.duration = recipe.duration;
                    logic.markDirty();
                    return true;
                }
            }
            return false;
        };
    }
}
