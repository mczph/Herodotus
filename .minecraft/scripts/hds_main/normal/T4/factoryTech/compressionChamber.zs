#packmode normal
#priority 0

import crafttweaker.item.IItemStack;
import mods.factorytech.CompressionChamber;
import scripts.hds_lib.crtlib;
import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid) {
    val ars as IItemStack = <contenttweaker:aspect_reaction_vessel>;
    for shape in crtlib.shapes {
        CompressionChamber.addRecipe(
            itemUtils.getItem(ars.definition.id ~ "_" ~ shape), ars, game.getLiquid(shape ~ "_mercury_suspension") * 1000
        );
        for color in crtlib.colors {
            CompressionChamber.addRecipe(
                itemUtils.getItem(ars.definition.id ~ "_" ~ color ~ "_" ~ shape),
                itemUtils.getItem(ars.definition.id ~ "_" ~ color),
                game.getLiquid(shape ~ "_mercury_suspension") * 1000
            );
        }
    }

    for color in crtlib.colors {
        CompressionChamber.addRecipe(
            itemUtils.getItem(ars.definition.id ~ "_" ~ color), ars, game.getLiquid(color ~ "_mercury_suspension") * 1000
        );
        for shape in crtlib.shapes {
            CompressionChamber.addRecipe(
                itemUtils.getItem(ars.definition.id ~ "_" ~ color ~ "_" ~ shape),
                itemUtils.getItem(ars.definition.id ~ "_" ~ shape),
                game.getLiquid(color ~ "_mercury_suspension") * 1000
            );
        }
    }

}
