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
events.onPlayerInteractBlock(function(event as PlayerInteractBlockEvent){
    val world as IWorld = event.world;
    val player as IPlayer = event.player;
    val foodStats as IFoodStats = player.foodStats;
    if (!world.remote && !isNull(player.currentItem)
                      && player.currentItem.definition.id == "pyrotech:crude_shovel"
                      && event.block.definition.id == "minecraft:gravel"){
        if (foodStats.saturationLevel >= 1.0f){
            foodStats.saturationLevel -= 1.0f;
        } else if (foodStats.foodLevel > 1){
            foodStats.foodLevel -= 1;
        } else return;
        event.damageItem(1);
        if (Math.random()<0.2){
            val pos as IBlockPos = event.position;
            val item as IItemStack = <pyrotech:material:10>;
            world.destroyBlock(pos, false);
            world.spawnEntity(item.createEntityItem(world, pos));
    }
    }
});
}