#packmode normal
#priority -1

import crafttweaker.entity.IEntity;
import crafttweaker.player.IPlayer;
import crafttweaker.item.IItemStack;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.entity.IEntityEquipmentSlot;

import crafttweaker.event.EntityLivingDeathEvent;
import scripts.hds_main.utils.modloader.isInvalid;

static levelMap as int[][int] = {
	1 : [1, 5], 2 : [5, 15], 3 : [20, 40], 4 :[50, 70]
};

if(!isInvalid) {
events.onEntityLivingDeath(function(event as EntityLivingDeathEvent) {
	var entityBase as IEntityLivingBase = event.entityLivingBase; 
	var trueSource as IEntity = event.damageSource.trueSource;

	if (!(trueSource instanceof IPlayer) || entityBase.world.remote) return;
	
	var player as IPlayer = trueSource;
	if (isNull(player.getItemInSlot(IEntityEquipmentSlot.offhand())) || entityBase.definition.id != "srparasites:movingflesh") return;
	var offItem as IItemStack = player.getItemInSlot(IEntityEquipmentSlot.offhand());

	if (<thaumcraft:phial> has offItem) {
		var level as int = entityBase.nbt.leshtimes.asInt();
		if (offItem.amount > 1) {
			offItem.mutable().shrink(1);
			player.give(getRandomAmountWithPhial(level, player));
		} else 
			player.setItemToSlot(IEntityEquipmentSlot.offhand(), getRandomAmountWithPhial(level, player));
			
	}
});
}

function getRandomAmountWithPhial(level as int, player as IPlayer) as IItemStack {
	var randomAmount as int = player.world.random.nextInt(levelMap[level][0], levelMap[level][1]);
	return <thaumcraft:phial:1>.withTag({Aspects: [{amount: randomAmount, key: "ordo"}]});
}