#packmode normal
#priority -1

import crafttweaker.data.IData;
import crafttweaker.world.IWorld;
import crafttweaker.world.IBlockPos;
import crafttweaker.world.IFacing;
import crafttweaker.player.IPlayer;
import crafttweaker.event.EntityLivingDamageEvent;
import crafttweaker.event.EntityLivingDeathEvent;
import crafttweaker.event.PlayerTickEvent;
import crafttweaker.event.PlayerCloneEvent;
import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityDefinition;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.entity.AttributeInstance;
import crafttweaker.entity.AttributeModifier;
import crafttweaker.util.IRandom;
import mods.hdsutils.ITaint;
import mods.ctutils.utils.Math;
import scripts.hds_main.utils.modloader.isInvalid;
import scripts.grassUtils.EventUtils;

static priEntities as IEntityDefinition[] = [
    <entity:srparasites:pri_longarms>,
    <entity:srparasites:pri_manducater>,
    <entity:srparasites:pri_reeker>,
    <entity:srparasites:pri_yelloweye>,
    <entity:srparasites:pri_summoner>,
    <entity:srparasites:pri_bolster>,
    <entity:srparasites:pri_arachnida>
];

static parasites as IEntityDefinition[][int] = {
    0 : priEntities,
    1 : [
        <entity:srparasites:ada_longarms>,
        <entity:srparasites:ada_manducater>,
        <entity:srparasites:ada_reeker>,
        <entity:srparasites:ada_yelloweye>,
        <entity:srparasites:ada_summoner>,
        <entity:srparasites:ada_bolster>,
        <entity:srparasites:ada_arachnida>
    ],
    2 : [
        <entity:srparasites:carrier_flying>,
        <entity:srparasites:carrier_heavy>,
        <entity:srparasites:kyphosis>,
        <entity:srparasites:sentry>
    ],
    3 : [
        <entity:srparasites:beckon_siii>,
        <entity:srparasites:beckon_siv>
    ]
};

static parasitesMap as IEntityDefinition[IEntityDefinition] = {
    <entity:minecraft:cow>: <entity:srparasites:sim_cow>,
    <entity:minecraft:sheep>: <entity:srparasites:sim_sheep>,
    <entity:minecraft:wolf>: <entity:srparasites:sim_wolf>,
    <entity:minecraft:pig>: <entity:srparasites:sim_pig>,
    <entity:minecraft:villager>: <entity:srparasites:sim_villager>
};

static taintUUID1 as string = "a6a68061-8cc9-48d0-8b69-54e7ee383ed8";
static taintUUID2 as string = "bdb6f5a0-c20a-4d70-96d7-0b2a74331b04";

function spawnEntityNearby(entity as IEntityDefinition, world as IWorld, pos as IBlockPos, random as IRandom) {
    var xOffset as int = random.nextInt(24, 48);
    var zOffset as int = random.nextInt(24, 48);
    if (random.nextBoolean()) {
        xOffset = 0 - xOffset;
    }
    if (random.nextBoolean()) {
        zOffset = 0 - zOffset;
    }
    var pos1 as IBlockPos = EventUtils.getOffset(pos, xOffset, 0, zOffset);
    while (pos1.y < 256 && world.getBlockState(pos1) != <blockstate:minecraft:air>) {
        pos1 = pos1.getOffset(IFacing.up(), 1);
    }
    entity.spawnEntity(world, pos1);
} 

if (!isInvalid) {
    events.onEntityLivingDamage(function(event as EntityLivingDamageEvent) {
        val entity as IEntityLivingBase = event.entityLivingBase;
        val world as IWorld = entity.world;
        if (entity instanceof IPlayer) {
            val player as IPlayer = entity;
            val pos as IBlockPos = player.position;
            val taint as ITaint = player.taint;
            if (taint.moreThanScale(0.95f)) {
                event.amount = 1145141919810.0f;
            } else if (taint.moreThanScale(0.85f)) {
                event.amount *= 3.45f;
            } else if (taint.moreThanScale(0.55f)) {
                event.amount *= 2.5f;
                if (event.amount >= 20.0f && !world.remote) {
                    val random as IRandom = world.random;
                    spawnEntityNearby(priEntities[random.nextInt(priEntities.length)], world, pos, random);
                }
            } else if (taint.moreThanScale(0.3f)) {
                event.amount *= 1.5f;
            }
            if (taint.moreThanScale(0.4f) && !world.remote) {
                world.addFlux(pos, taint.scale / 50);
            }
        } else {
            if (event.amount >= entity.health)
                return;
            val convert as IEntityDefinition = parasitesMap[entity.definition];
            if (!isNull(convert)) {
                val source as IEntity = event.damageSource.trueSource;
                if (source instanceof IPlayer) {
                    val sourcePlayer as IPlayer = source;
                    if (sourcePlayer.taint.moreThanScale(0.8f)) {
                        event.cancel();
                        entity.removeFromWorld();
                        val parasite as IEntity = convert.createEntity(world);
                        parasite.motionX = entity.motionX;
                        parasite.motionY = entity.motionY;
                        parasite.motionZ = entity.motionZ;
                        parasite.posX = entity.posX;
                        parasite.posY = entity.posY;
                        parasite.posZ = entity.posZ;
                        parasite.rotationYaw = entity.rotationYaw;
                        parasite.rotationPitch = entity.rotationPitch;
                        world.spawnEntity(parasite);
                    }
                }
            }
        }
    });

    events.onPlayerTick(function(event as PlayerTickEvent) {
        val player as IPlayer = event.player;
        if (player.world.remote) 
            return;
        val random as IRandom = player.world.random;
        val maxHealth as AttributeInstance = player.getAttribute("generic.maxHealth");
        val taint as ITaint = player.taint;
        if (taint.moreThanScale(0.5f) && isNull(maxHealth.getModifier(taintUUID1))) {
            maxHealth.applyModifier(AttributeModifier.createModifier("Taint50", player.maxHealth, 0, taintUUID1));
        }
        if (taint.moreThanScale(0.4f)) {
            var temp as int = (taint.scale * 100.0f) as int;
            while (temp % 5 != 0) {
                temp -= 1;
            }
            val lastAddingMaxHealthTaint as IData = player.data.LastAddingMaxHealthTaint;
            if (isNull(lastAddingMaxHealthTaint) || Math.abs(lastAddingMaxHealthTaint.asFloat() - taint.scale) >= 5.0f) {
                player.update({LastAddMaxHealthTaint: temp});
                maxHealth.removeModifier(taintUUID2);
                maxHealth.applyModifier(AttributeModifier.createModifier("TaintDynamic", maxHealth.baseValue * taint.scale, 0, taintUUID2));
            }
        }
        if (taint.moreThanScale(0.65f) && random.nextInt(300000) == 233333) {
            player.addPotionEffect(<potion:hdsutils:starvation>.makePotionEffect(1200, 1));
        }
        if (taint.moreThanScale(0.75f) && random.nextInt(650000) == 114514) {
            spawnEntityNearby(priEntities[random.nextInt(priEntities.length)], player.world, player.position, random);
        }
    });

    events.onPlayerClone(function(event as PlayerCloneEvent) {
        val originalModifier = event.originalPlayer.getAttribute("generic.maxHealth").getModifier(taintUUID1);
        if (!isNull(originalModifier)) {
            val amount as double = originalModifier.amount;
            event.player.getAttribute("generic.maxHealth").applyModifier(AttributeModifier.createModifier("Taint50", amount, 0, taintUUID1));
        }
    });

    events.onEntityLivingDeath(function(event as EntityLivingDeathEvent) {
        val entity as IEntityLivingBase = event.entityLivingBase;
        val world as IWorld = entity.world;
        if (world.remote)
            return;
        val player as IPlayer = world.getClosestPlayerToEntity(entity, 50.0, false);
        val random as IRandom = world.random;
        if (!isNull(player) && player.taint.moreThanScale(0.85f) && random.nextInt(10) >= 7) {
            val i as int = random.nextInt(20);
            var index as int = 0;
            if (i == 0) {
                index = 3;
            } else if (i < 5) {
                index = 2;
            } else if (i < 11) {
                index = 1;
            }
            val list as IEntityDefinition[] = parasites[index];
            spawnEntityNearby(list[random.nextInt(list.length)], world, entity.position, random);
        }
    });
}
