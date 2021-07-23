#packmode normal
#priority -1
#loader crafttweaker

import crafttweaker.data.IData;
import crafttweaker.world.IWorld;
import crafttweaker.block.IBlock;
import crafttweaker.player.IPlayer;
import crafttweaker.item.IItemStack;
import crafttweaker.world.IBlockPos;
import crafttweaker.block.IBlockState;

import scripts.hds_main.utils.modloader.isInvalid;

import crafttweaker.event.PlayerInteractBlockEvent;

if (!isInvalid){
events.onPlayerInteractBlock(function(event as PlayerInteractBlockEvent){
	val world as IWorld = event.world;
	var item as IItemStack = event.item;
    val player as IPlayer = event.player;
	var position as IBlockPos = event.position;
    val block as IBlock = world.getBlock(position);
    val blockState as IBlockState = world.getBlockState(position);

	if (isNull(item) || isNull(item.tag) || isNull(block.data)) return;

	var itemTag as IData = item.tag;
	var blockData as IData = block.data;

	if (<thaumcraft:phial:1> has item) {
		var aspectItem as string = itemTag.Aspects[0].key.asString();
		var amountItem as short = itemTag.Aspects[0].amount.asShort();
		
		if (isNull(blockData.Amount) || isNull(blockData.Aspect)) return;

		var amountBlock as short = blockData.Amount.asShort();
		var aspectBlock as string = blockData.Aspect.asString();

		if (aspectBlock != aspectItem || amountItem == 10) return;
		world.setBlockState(blockState, {Amount : amountBlock + (amountItem - 10)}, position);
	}
});
}