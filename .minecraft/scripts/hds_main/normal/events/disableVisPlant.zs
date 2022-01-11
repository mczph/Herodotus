#packmode normal
#priority -1
#loader crafttweaker reloadableevents

import crafttweaker.block.IBlockPattern;
import crafttweaker.event.PlayerInteractBlockEvent;

static farmland as IBlockPattern = <minecraft:farmland>.asBlock() | <pyrotech:farmland_mulched>.asBlock();

events.onPlayerInteractBlock(function(event as PlayerInteractBlockEvent) {
    if (<thaumadditions:vis_seeds>.matches(event.item) && farmland has event.block) {
        event.cancel();
    }
});
