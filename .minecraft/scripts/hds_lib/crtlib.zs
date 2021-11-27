#packmode normal
#priority 2001

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

import thaumcraft.aspect.CTAspectStack;

//parts and colors
static colors as string[] = ["red", "yellow", "blue"];
static shapes as string[] = ["rhombus", "spherical", "square"];

static maxInt as int = 2147483647;

static allMetals as [string] = [
    "Bronze", "Iron", "Lithium", "Copper",
    "Lead", "Tin", "Nickel", "Silver", "Lapis",
    "Tungsten", "Sodium", "Aluminum", "Gold",
    "Chromium", "Silicon", "Cobalt", "Titanium",
    "Potassium", "Iridium", "Osmium"
];

static allGems as [string] = [
    "Diamond", "Glimmerite"
];

static basicAspects as CTAspectStack[] = [
    <aspect:aer>, <aspect:terra>, <aspect:ignis>, <aspect:aqua>,
    <aspect:ordo>, <aspect:perditio>, <aspect:vitium>
];

function tcSaltGetter(aspect as string) as IItemStack {
    val temp as IItemStack = <thaumadditions:salt_essence>.withTag({Aspects: [{amount: 1, key: aspect}]});
    return temp;
}

function tcPhialGetter(aspect as string) as IItemStack {
    val temp as IItemStack = <thaumcraft:phial:1>.withTag({Aspects: [{amount: 10, key: aspect}]});
    return temp;
}

function tcCrystalGetter(aspect as string) as IItemStack {
    val temp as IItemStack = <thaumcraft:crystal_essence>.withTag({Aspects: [{amount: 1, key: aspect}]});
    return temp;
}

function tcSSGetter(aspect as string) as IItemStack {
    val temp as IItemStack = <thaumadditions:seal_symbol>.withTag({Aspect: aspect});
    return temp;
}

function tcPodGetter(aspect as string) as IItemStack {
    val temp as IItemStack = <thaumadditions:vis_pod>.withTag({Aspect: aspect});
    return temp;
}

function tcSeedGetter(aspect as string) as IItemStack {
    val temp as IItemStack = <thaumadditions:vis_seeds>.withTag({Aspect: aspect});
    return temp;
}

function tcVisBlockGetter(aspect as string) as IItemStack {
    val temp as IItemStack = <thaumadditions:crystal_block>.withTag({Aspect: aspect});
    return temp;
}

function tconPartGetter(basic as IItemStack, material as string) as IItemStack {
    val temp as IItemStack = basic.withTag({Material: material});
    return temp;
}
