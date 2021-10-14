#packmode normal
#priority -1
#loader crafttweaker reloadableevents

import crafttweaker.world.IBlockPos;
import crafttweaker.world.IFacing;
import crafttweaker.world.IWorld;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.entity.AttributeInstance;
import crafttweaker.entity.AttributeModifier;
import crafttweaker.player.IPlayer;

import crafttweaker.event.EntityLivingUpdateEvent;

events.onEntityLivingUpdate(function(event as EntityLivingUpdateEvent) {
    val entity as IEntityLivingBase = event.entityLivingBase;
    val world as IWorld = entity.world;
    val pos as IBlockPos = entity.position;
    if (!world.remote && <blockstate:bloodmagic:life_essence>.block has world.getBlock(pos) && entity.maxHealth < 20.0f) {
        val attribute as AttributeInstance = entity.getAttribute("generic.maxHealth");
        val riftMinus as int = sumAdditionModifierAmount(attribute, "Rift Minus");
        val lifeEssenceAddition as int = sumAdditionModifierAmount(attribute, "Life Essence Addition");
        if (riftMinus + lifeEssenceAddition < 0) {
            world.setBlockState(<blockstate:minecraft:air>, pos);
            attribute.applyModifier(AttributeModifier.createModifier("Life Essence Addition", 1.0f, 0));
            if (world.random.nextInt(100) < 15 && entity instanceof IPlayer) {
                val player as IPlayer = entity;
                player.give(<item:contenttweaker:void_specimen>);
            }
        }
    }
});

function sumAdditionModifierAmount(attribute as AttributeInstance, name as string) as int {
    var s as int = 0;
    for modifier in attribute.getModifiersByOperation(0) {
        if (modifier.name == name) {
            s += modifier.amount;
        }
    }
    return s;
}
