#packmode normal
#priority -1
#loader crafttweaker reloadableevents

import crafttweaker.event.EntityLivingUpdateEvent;
import crafttweaker.event.EntityLivingDeathEvent;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.entity.IEntityDefinition;
import crafttweaker.data.IData;
import crafttweaker.world.IWorld;
import crafttweaker.world.IBlockPos;

static result as string = <entity:thaumcraft:inhabitedzombie>.name;

events.onEntityLivingUpdate(function(event as EntityLivingUpdateEvent) {
    val entity as IEntityLivingBase = event.entityLivingBase;
    if (!isNull(entity)) {
        val world as IWorld = entity.world;
        val definition as IEntityDefinition = entity.definition;
        if (world.remote || isNull(definition) || entity.definition.name == result) return;
        if (world.getBlockState(entity.position).getBlock().definition.id == "thaumcraft:flux_goo") {
            entity.setNBT({ContainsEntity: result});
        }
    }
});

events.onEntityLivingDeath(function(event as EntityLivingDeathEvent) {
    val entity as IEntityLivingBase = event.entityLivingBase;
    val world as IWorld = entity.world;
    val pos as IBlockPos = entity.position;
    if (world.remote) return;
    val forgeData as IData = entity.nbt.ForgeData;
    if (!isNull(forgeData)) {
        val containsEntity as IData = forgeData.ContainsEntity;
        if (!isNull(containsEntity)) {
           game.getEntity(containsEntity.asString()).spawnEntity(world, pos);
        }
    }
});
