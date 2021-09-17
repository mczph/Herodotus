#norun
#packmode normal
#priority -1
#loader crafttweaker reloadableevents

import crafttweaker.world.IWorld;
import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityDefinition;
import crafttweaker.player.IPlayer;
import crafttweaker.events.IEventManager;

import mods.ctintegration.scalinghealth.DifficultyManager;
import mods.ctintegration.gamestages.GameStageAddedEvent;

import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.event.EntityLivingDeathEvent;
//import scripts.hds_main.utils.modloader.isInvalid;

function isNotVanillaEntity(entity as IEntity) as bool {
    return entity.definition.id.split()[0] != "minecraft";
}

static srparasites as IEntityDefinition[] = [];

static neutralVanilla as IEntityDefinition[] = [];

static flyingChampions as IEntityDefinition[] = [];

static walkingChampions as IEntityDefinition[] = [];

//if(!isInvalid){
/*events.onGameStageAdded(function(event as GameStageAddedEvent) {
    var player as IPlayer = event.player;

    if (!isNull(event.gameStage) || event.gameStage == "T3Entrance"){
        player.sendChat("Unlocked " ~ event.gameStage ~ "!");
    }else return;
});*/

events.onEntityLivingDeath(function(event as EntityLivingDeathEvent) {
    var entity as IEntityLivingBase = event.entityLivingBase; 
    var trueSource as IEntity = event.damageSource.trueSource;
    val entityDef as IEntityDefinition = entity.definition;

    if (!(trueSource instanceof IPlayer) || entityBase.world.remote) return;
    if (neutralVanilla has entityDef) {
        DifficultyManager.addDifficulty(player, -0.01, true);
        return;
    }
    if (srparasites has entityDef) {
        DifficultyManager.addDifficulty(player, 0.04, true); // 0.12?
        return;
    }
    if (isNotVanillaEntity(entity)) {
        DifficultyManager.addDifficulty(player, 0.04, true);
    }
});

