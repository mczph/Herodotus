#priority 2000
#loader contenttweaker

import mods.contenttweaker.VanillaFactory;

var zf = VanillaFactory.createItemFood("zorra_fruit", 4);
zf.alwaysEdible = true;
zf.maxStackSize = 16;
zf.onItemFoodEaten = function(stack, world, player) {
    if (!world.remote) {
        player.addPotionEffect(<potion:hdsutils:harvation>.makePotionEffect(80 * 20, 1));
        player.warpTemporary += 5;
        player.taint.addStickyTaint(5);
    }
};
zf.register();
