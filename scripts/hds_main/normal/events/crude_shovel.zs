#packmode normal
#priority -1

import crafttweaker.events.IEventManager;
import crafttweaker.event.PlayerInteractBlockEvent;
import crafttweaker.event.IEventPositionable;
import crafttweaker.item.IItemStack;
import crafttweaker.player.IPlayer;
import crafttweaker.player.IFoodStats;
import crafttweaker.world.IWorld;
import crafttweaker.world.IBlockPos;
import mods.ctutils.utils.Math;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){

events.onPlayerInteractBlock(function(event as PlayerInteractBlockEvent){//PlayerInteractBlockEvent(rightclick)
    val world as IWorld = event.world;
    val player as IPlayer = event.player;
    val foodStats as IFoodStats = player.foodStats;
    if (!world.remote && !isNull(player.currentItem)//main hand is not null
                      && player.currentItem.definition.id == "pyrotech:crude_shovel"//main hand is holding pyrotech:crude_shovel
                      && event.block.definition.id == "minecraft:gravel"){//effect minecraft:gravel
        if (foodStats.saturationLevel >= 1.0f){//if saturation >= 1.0
            foodStats.saturationLevel -= 1.0f;//saturationLevel - 1.0
        } else if (foodStats.foodLevel > 1){// if saturation less than 1.0, check if foodLevel >= 1
            foodStats.foodLevel -= 1;//foodLevel - 1.0
        } else return;//or nothing happened
        event.damageItem(1);//damage the shovel
        if (Math.random()<0.2){//by 20%
            val pos as IBlockPos = event.position;
            val item as IItemStack = <pyrotech:material:10>;
            world.destroyBlock(pos, false);//destroyt the gravel
            world.spawnEntity(item.createEntityItem(world, pos));//drop the flint piece
    }}
});
}