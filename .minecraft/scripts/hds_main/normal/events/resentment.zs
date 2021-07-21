#priority -1

import crafttweaker.event.EntityLivingDeathEvent;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.util.Position3f;
import crafttweaker.world.IWorld;

import mods.ctutils.utils.Math;

import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid) {

events.onEntityLivingDeath(function(event as EntityLivingDeathEvent) {
    var entityBase as IEntityLivingBase = event.entityLivingBase;
    var maxHealth as float = entityBase.maxHealth;
    var world as IWorld = entityBase.world;

    if(event.damageSource.damageType == "machine") {
        var addFlux as long = Math.ceil(maxHealth / 10);
        world.addFlux(Position3f.create(entityBase.x, entityBase.y, entityBase.z).asBlockPos(), 0.1 * addFlux);
    }
});

}