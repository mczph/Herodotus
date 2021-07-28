#packmode normal
#priority -1

import crafttweaker.world.IWorld;
import crafttweaker.player.IPlayer;
import crafttweaker.item.IItemStack;

import crafttweaker.event.PlayerRightClickItemEvent;

events.onPlayerRightClickItem(function(event as PlayerRightClickItemEvent) {
    var player as IPlayer = event.player;
    var world as IWorld = event.world;

    if(!world.remote && !isNull(player.currentItem) && !isNull(player.offHandHeldItem)) {
        var mainItem as IItemStack = player.currentItem;
        var offItem as IItemStack = player.offHandHeldItem;

        if(mainItem.definition.id == "thaumcraft:condenser_lattice_dirty" && offItem.definition.id == "minecraft:bucket") {
            mainItem.mutable().shrink(1);
            offItem.mutable().shrink(1);

            player.give(<forge:bucketfilled>.withTag({FluidName: "flux_goo", Amount: 1000}));
        }
    }
});