#priority 2000
#loader contenttweaker

import mods.zenutils.cotx.Block;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.player.IFoodStats;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.MutableItemStack;

val altar as Block = VanillaFactory.createExpandBlock("altar", <blockmaterial:iron>);
altar.onBlockActivated = function(world, pos, state, player, hand, facing, blockHit) {
    if (!world.remote) {
        var ore as IOreDictEntry = null;
        var time as long = world.time % 24000;
        if (time > 5500 && time < 6500) {
            ore = <ore:ingotCopper>;
        }
        if (time > 17500 && time < 18500) {
            ore = <ore:ingotIron>;
        }
        if (!isNull(player.currentItem)) {
            val item as MutableItemStack = player.getHeldItem(hand);
            if (!isNull(item) && !isNull(ore) && ore.matches(item)) {
                item.shrink(1);
                val amount as int = world.getRandom().nextInt(8) + 1;
                val foodStats as IFoodStats = player.foodStats;
                if (foodStats.saturationLevel >= 2.0f) {
                    foodStats.saturationLevel -= 2.0f;
                } else if (foodStats.foodLevel >= 2) {
                    foodStats.foodLevel -= 2;
                } else return false;
                player.attackEntityFrom(<damageSource:MAGIC>, 2.0f);
                player.give(<ore:nuggetGold>.firstItem * amount);
                return true;
            }
        }
        return false;
    } else {
        return true;
    }
};
altar.register();
