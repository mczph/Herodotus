#packmode normal
#priority -1

import crafttweaker.events.IEventManager;
import crafttweaker.event.PlayerInteractEntityEvent;
import crafttweaker.player.IPlayer;
import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityDefinition;
import crafttweaker.world.IWorld;
import crafttweaker.world.IBlockPos;
import crafttweaker.item.IItemStack;
import mods.ctutils.utils.Math;
import scripts.hds_main.utils.modloader.isInvalid;

static parasites as string[] = [
    "longarms", "bolster", "manducater", "reeker", "yelloweye", "summoner", "arachnida"
];

if(!isInvalid){
events.onPlayerInteractEntity(function(event as PlayerInteractEntityEvent){
    val world as IWorld = event.world;
    val player as IPlayer = event.player;
    val target as IEntity = event.target;
    val item as IItemStack = event.item;
    val def as IEntityDefinition = target.definition;
    if (!world.remote && !isNull(def) && <item:contenttweaker:belial_christener_empty>.matches(item)) {
        val entityId as string = def.id;
        if (entityId.startsWith("srparasites:pri")) {
            for name in parasites {
                if (entityId.endsWith(name)) {
                    world.removeEntity(target);
                    item.mutable().shrink(1);
                    player.give(itemUtils.getItem("contenttweaker:belial_christener_" ~ name, 0));
                }
            }
        }
    }
});
}