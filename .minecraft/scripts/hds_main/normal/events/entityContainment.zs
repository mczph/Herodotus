#packmode normal
#priority -1

import crafttweaker.data.IData;
import crafttweaker.world.IWorld;
import crafttweaker.damage.IDamageSource;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.entity.IEntityDefinition;
import crafttweaker.event.EntityLivingDeathEvent;
import crafttweaker.event.EntityLivingUpdateEvent;
import crafttweaker.event.EntityLivingDeathDropsEvent;

import scripts.hds_main.utils.modloader.isInvalid;

static result as string = <entity:srparasites:movingflesh>.name;
if(!isInvalid) {

events.onEntityLivingUpdate(function(event as EntityLivingUpdateEvent) {
    val entity as IEntityLivingBase = event.entityLivingBase;
    if (!isNull(entity)) {
        val world as IWorld = entity.world;
        val definition as IEntityDefinition = entity.definition;
        if (world.remote || isNull(definition) || entity.definition.name == result) return;
        if (world.getBlockState(entity.position).getBlock().definition.id == "thaumcraft:flux_goo") {
            entity.attackEntityFrom(<damageSource:FLUX_GOO>, 2);
        }
    }
});

events.onEntityLivingDeath(function(event as EntityLivingDeathEvent) {
    val entity as IEntityLivingBase = event.entityLivingBase;
    val damageSource as IDamageSource = event.damageSource;
    val world as IWorld = entity.world;
    if (world.remote) return;
    if(!isNull(damageSource) && damageSource.damageType == "FLUX_GOO") {
        game.getEntity(result).spawnEntity(world, entity.position);
    }
});

events.onEntityLivingDeathDrops(function(event as EntityLivingDeathDropsEvent) {
    val damageSource as IDamageSource = event.damageSource;
    if(!isNull(damageSource) && damageSource.damageType == "FLUX_GOO") {
        event.cancel();
    }
});
}
