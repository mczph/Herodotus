#priority 2000
#loader contenttweaker

import mods.zenutils.cotx.Item;
import mods.contenttweaker.VanillaFactory;

import crafttweaker.world.IWorld;
import crafttweaker.world.IFacing;
import crafttweaker.util.Position3f;
import crafttweaker.world.IBlockPos;

var seed as Item = VanillaFactory.createExpandItem("rhythmic_seed");
seed.onEntityItemUpdate = function(entityItem) {
	var world as IWorld = entityItem.world;
	var toT as long = world.getWorldTime() + 10;
	if (!world.remote) {
		if (isNull(entityItem.nbt.ForgeData.toTime) || entityItem.nbt.ForgeData.toTime == 0) {
			entityItem.setNBT({toTime : toT});
		} else if (entityItem.nbt.ForgeData.toTime == world.getWorldTime()) {
			world.addFlux(Position3f.create(entityItem.x, entityItem.y, entityItem.z).asBlockPos(), 0.1 * entityItem.item.amount);
			entityItem.item.mutable().shrink(64);
		}
	}
	return false;
};
seed.register();