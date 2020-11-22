#packmode expert
#modloaded bathappymod
#priority -100

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

val bp = <extendedcrafting:material:2>;
val bi = <extendedcrafting:material>;
val goldtable = <tconstruct:toolforge>.withTag({textureBlock: {id: "minecraft:gold_block", Count: 1 as byte, Damage: 0 as short}});
recipes.addShaped("advcraftingtable", <extendedcrafting:table_advanced>,[
    [bp,bp,bp],
    [bi,goldtable,bi,],
    [bi,<astralsorcery:blockblackmarble>,bi]
]);