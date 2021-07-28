#priority 2000
#loader contenttweaker

import crafttweaker.world.IWorld;
import crafttweaker.world.IFacing;
import crafttweaker.player.IPlayer;
import crafttweaker.world.IBlockPos;
import crafttweaker.entity.IEntityXp;
import crafttweaker.entity.IEntityItem;

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.ctutils.utils.Math;
import mods.hdsutils.HDSUtils;

var fleshBolus as Item = VanillaFactory.createItem("flesh_bolus");
fleshBolus.onItemUpdate = function(itemStack, world, owner, slot, isSelected) {
    if(!world.remote && world.random.nextInt(100000) <= 1 && owner instanceof IPlayer) {
        itemStack.shrink(1);

        var entityAmount as int = 0;
        var pos as IBlockPos = owner.position;
        var leftUpPos as IBlockPos = pos.getOffset(IFacing.north(), 10).getOffset(IFacing.west(), 10).getOffset(IFacing.up(), 5);
        var rightDownPos as IBlockPos = pos.getOffset(IFacing.south(), 10).getOffset(IFacing.east(), 10).getOffset(IFacing.down(), 5);

        for entity in world.getEntitiesInArea(leftUpPos.asPosition3f(), rightDownPos.asPosition3f()) {
            if(!entity instanceof IPlayer && entity.definition.id != "hdsutils:red_slime") {
                if(entity instanceof IEntityItem) {
                    var iEntityItem as IEntityItem = entity;
                    entityAmount += iEntityItem.item.amount;
                } else if(entity instanceof IEntityXp) {
                    var iEntityXp as IEntityXp = entity;
                    entityAmount += (Math.ceil(iEntityXp.xp) as int);
                } else {
                    entityAmount += 1;
                }

                entity.onKillCommand();
            }
        }

        HDSUtils.spawnRedSlime(
            world, 
            pos.getOffset(IFacing.up(), 2).asPosition3f(), 
            entityAmount * 40 > 800 ? entityAmount * 40 : 800,
            entityAmount * 4 > 16 ? entityAmount * 4 : 16
            );

    }
};
fleshBolus.register();