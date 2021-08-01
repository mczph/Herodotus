#packmode normal
#priority -1

import crafttweaker.world.IWorld;
import crafttweaker.player.IPlayer;
import crafttweaker.item.IItemStack;

import crafttweaker.event.PlayerRightClickItemEvent;

import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid) {

events.onPlayerRightClickItem(function(event as PlayerRightClickItemEvent) {
    var player as IPlayer = event.player;
    var world as IWorld = event.world;
    var mainItem as IItemStack = player.currentItem;
    var offItem as IItemStack = player.offHandHeldItem;

    if(!world.remote && <minecraft:bucket>.matches(offItem) && <thaumcraft:condenser_lattice_dirty>.matches(mainItem)) {
        mainItem.mutable().shrink(1);
        offItem.mutable().shrink(1);
        player.give(<forge:bucketfilled>.withTag({FluidName: "flux_goo", Amount: 1000}));
    }
});

}