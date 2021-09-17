#norun
#packmode normal
#priority -1
#loader crafttweaker reloadableevents

import crafttweaker.world.IWorld;
import crafttweaker.entity.IEntity;
import crafttweaker.player.IPlayer;
import crafttweaker.events.IEventManager;

import mods.ctintegration.scalinghealth.DifficultyManager;
import mods.ctintegration.gamestages.GameStageAddedEvent;

import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.event.EntityLivingDeathEvent;
//import scripts.hds_main.utils.modloader.isInvalid;

static nonVanilla as IEntity[] = entity.definition.id.split[0] != "minecraft";

static srparasites as IEntity[] = [];

static neutralVanilla as IEntity[] = [];

static flyingChampions as IEntity[] = [];

static walkingChampions as IEntity[] = [];

//if(!isInvalid){
/*events.onGameStageAdded(function(event as GameStageAddedEvent) {
    var player as IPlayer = event.player;

    if (!isNull(event.gameStage) || event.gameStage == "T3Entrance"){
        player.sendChat("Unlocked " ~ event.gameStage ~ "!");
    }else return;
});*/

for nonv in nonVanilla {
    events.onEntityLivingDeath(function(event as EntityLivingDeathEvent) {
        var entityBase as IEntityLivingBase = event.entityLivingBase; 
        var trueSource as IEntity = event.damageSource.trueSource;

        if (!(trueSource instanceof IPlayer) || entityBase.world.remote) return;
        
        var player as IPlayer = trueSource;
        if (entityBase.definition.id != nonv.definition.id) return;
        DifficultyManager.addDifficulty(player, 0.04, true);
    });
}

for srp in srparasites {
    events.onEntityLivingDeath(function(event as EntityLivingDeathEvent) {
        var entityBase as IEntityLivingBase = event.entityLivingBase; 
        var trueSource as IEntity = event.damageSource.trueSource;

        if (!(trueSource instanceof IPlayer) || entityBase.world.remote) return;
        
        var player as IPlayer = trueSource;
        if (entityBase.definition.id != srp.definition.id) return;
        DifficultyManager.addDifficulty(player, 0.04, true);
    });
}

for nv in neutralVanilla {
    events.onEntityLivingDeath(function(event as EntityLivingDeathEvent) {
        var entityBase as IEntityLivingBase = event.entityLivingBase; 
        var trueSource as IEntity = event.damageSource.trueSource;

        if (!(trueSource instanceof IPlayer) || entityBase.world.remote) return;
        
        var player as IPlayer = trueSource;
        if (entityBase.definition.id != nv.definition.id) return;
        DifficultyManager.addDifficulty(player, -0.01, true);
    });
}
//}
