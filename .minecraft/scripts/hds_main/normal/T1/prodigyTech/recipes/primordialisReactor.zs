#packmode normal
#priority -1

import crafttweaker.item.IItemStack;
import mods.prodigytech.primordialisreactor;
import scripts.hds_main.utils.modloader.isInvalid;

if (!isInvalid) {
    val items as IItemStack[] = [
        <pyrotech:material:12>,
        <pyrotech:material:13>,
        <pyrotech:material:2>,
        <actuallyadditions:item_canola_seed>,
        <actuallyadditions:item_flax_seed>,
        <actuallyadditions:item_coffee_seed>,
        <xlfoodmod:cucumber_seeds>,
        <xlfoodmod:lettuce_seeds>,
        <xlfoodmod:tomato_seeds>,
        <xlfoodmod:strawberry_seeds>,
        <xlfoodmod:rice_seeds>,
        <xlfoodmod:corn_seeds>,
        <growthcraft_hops:hop_seeds>,
        <xlfoodmod:pepper_seeds>,
        <xlfoodmod:pepper>,
        <xlfoodmod:raw_corn>,
        <xlfoodmod:corn>,
        <xlfoodmod:cucumber>,
        <xlfoodmod:lettuce>,
        <xlfoodmod:onion>,
        <xlfoodmod:tomato>,
        <xlfoodmod:strawberry>,
        <xlfoodmod:vanilla_flower>,
        <growthcraft_milk:thistle>,
        <growthcraft_rice:rice>,
        <growthcraft_grapes:grape:10>,
        <growthcraft_grapes:grape:13>,
        <growthcraft_grapes:grape:14>,
        <growthcraft_grapes:grape_seed:10>,
        <growthcraft_grapes:grape_seed:13>,
        <growthcraft_grapes:grape_seed:14>,
        <growthcraft_hops:hops>
    ];
    for item in items {
        primordialisreactor.addInput(item);
    }
}
