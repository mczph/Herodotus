#packmode normal
#priority -1

import crafttweaker.world.IWorld;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.entity.IEntityEquipmentSlot;
import crafttweaker.player.IPlayer;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IMutableItemStack;
import crafttweaker.event.EntityLivingDamageEvent;
import mods.ctintegration.baubles.IBaubleInventory;

import scripts.hds_main.utils.modloader.isInvalid;

static allArmorSlots as IEntityEquipmentSlot[] = [
    IEntityEquipmentSlot.feet(),
    IEntityEquipmentSlot.legs(),
    IEntityEquipmentSlot.chest(),
    IEntityEquipmentSlot.head()
];

if(!isInvalid) {
    events.onEntityLivingDamage(function(event as EntityLivingDamageEvent) {
        val entity as IEntityLivingBase = event.entityLivingBase;
        val world as IWorld = entity.world;
        if (world.remote) return;
        if (event.damageSource.damageType == "rift" && entity instanceof IPlayer) {
            val player as IPlayer = entity;
            val inventory as IBaubleInventory = player.baublesInventory;
            var amulet as IMutableItemStack = null;
            for i in 0 .. inventory.getSlotCount() {
                val stack as IItemStack = inventory.getStackInSlot(i);
                if (<item:contenttweaker:void_traveler_amulet:32767>.matches(stack)) {
                    amulet = stack.mutable();
                    break;
                }
            }
            if (!isNull(amulet)) {
                for slot in allArmorSlots {
                    if (!player.hasItemInSlot(slot)) return;
                }
                for slot in allArmorSlots {
                    player.getItemInSlot(slot).mutable().damageItem(1, player);
                }
                amulet.damageItem(1, player);
                event.cancel();
            }
        }
    });
}
