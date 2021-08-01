##packmode normal
#priority -1

import crafttweaker.world.IWorld;
import crafttweaker.world.IFacing;
import crafttweaker.player.IPlayer;
import crafttweaker.item.IItemStack;
import crafttweaker.world.IBlockPos;

import crafttweaker.event.PlayerInteractBlockEvent;

import scripts.hds_main.utils.modloader.isInvalid;

var vitium as IItemStack = <thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: "vitium"}]});

if(!isInvalid) {

events.onPlayerInteractBlock(function(event as PlayerInteractBlockEvent) {
    var world as IWorld = event.world;
    var player as IPlayer = event.player;
    var pos as IBlockPos = event.position;
    var mainItem as IItemStack = player.currentItem;

    if(!world.remote && vitium.matches(mainItem) && world.getBlockState(pos) == <blockstate:thaumcraft:sapling_silverwood>) {
        if(world.random.nextInt(0, 100) < 8) {
            world.setBlockState(<blockstate:prodigytech:zorra_log>, pos);
            world.setBlockState(<blockstate:prodigytech:zorra_leaves>, pos.getOffset(IFacing.up(), 1));
        }

        mainItem.mutable().shrink(1);
        player.give(<thaumcraft:phial>);
    }
});

}