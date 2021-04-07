#priority 2000
#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.zenutils.cotx.Item;
import crafttweaker.world.IWorld;
import crafttweaker.world.IFacing;
import crafttweaker.world.IBlockPos;
import crafttweaker.block.IBlockState;

function isBlock(blockState as IBlockState, id as string, meta as int) as bool {
    return blockState.block.definition.id == id && blockState.block.meta == meta;
}

val dye as Item = VanillaFactory.createExpandItem("black_dye");
dye.getEntityLifeSpan = function(stack, world) {
    return 2147483647;
};
dye.onEntityItemUpdate = function(entityItem) {
    val world as IWorld = entityItem.world;
    val pos as IBlockPos = entityItem.position;
    if (!world.remote && world.random.nextInt(1400) == 114) {
        val posDown as IBlockPos = pos.getOffset(IFacing.down(), 1);
        if (isBlock(world.getBlockState(posDown), "magneticraft:oil_source", 10)) {
            entityItem.item.mutable().shrink(1);
            world.setBlockState(<item:magneticraft:oil_source>.asBlock().definition.getStateFromMeta(0), posDown);
        }
    }
    return false;
};
dye.register();