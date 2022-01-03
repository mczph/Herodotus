#packmode normal
#priority 2001

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

import thaumcraft.aspect.CTAspect;
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

static allAspectsString as string[] = [
    "humanus", "herba", "invidia", "infernum", "permutatio", "vitreus",
    "motus", "draco", "ira", "desidia", "infernus", "cognitio", "ignis",
    "vacuos", "gelum", "tenebrae", "perditio", "victus", "aer", "machina",
    "gula", "auram", "visum", "sensus", "exitium", "fluctus", "aqua", "fabrico",
    "terra", "ordo", "sonus", "alkimia", "metallum", "potentia", "volatus",
    "revelatio", "vinculum", "lux", "bestia", "praecantatio", "spiritus",
    "caeles", "praemunio", "mortuus", "imperium", "luxuria", "alienis", "desiderium",
    "instrumentum", "exanimis", "superbia", "vitium", "ventus", "aversio"
];

static allAspectCTAspectStack as CTAspectStack[] = [
    <aspect:humanus>, <aspect:herba>, <aspect:invidia>, <aspect:infernum>, <aspect:permutatio>,
    <aspect:vitreus>, <aspect:motus>, <aspect:draco>, <aspect:ira>, <aspect:desidia>,
    <aspect:infernus>, <aspect:cognitio>, <aspect:ignis>, <aspect:vacuos>, <aspect:gelum>,
    <aspect:tenebrae>, <aspect:perditio>, <aspect:victus>, <aspect:aer>, <aspect:machina>,
    <aspect:gula>, <aspect:auram>, <aspect:visum>, <aspect:sensus>, <aspect:exitium>,
    <aspect:fluctus>, <aspect:aqua>, <aspect:fabrico>, <aspect:terra>, <aspect:ordo>,
    <aspect:sonus>, <aspect:alkimia>, <aspect:metallum>, <aspect:potentia>, <aspect:volatus>,
    <aspect:revelatio>, <aspect:vinculum>, <aspect:lux>, <aspect:bestia>, <aspect:praecantatio>,
    <aspect:spiritus>, <aspect:caeles>, <aspect:praemunio>, <aspect:mortuus>, <aspect:imperium>,
    <aspect:luxuria>, <aspect:alienis>, <aspect:desiderium>, <aspect:instrumentum>,
    <aspect:exanimis>, <aspect:superbia>, <aspect:vitium>, <aspect:ventus>, <aspect:aversio>
];

static basicAspects as CTAspectStack[] = [
    <aspect:aer>, <aspect:terra>, <aspect:ignis>, <aspect:aqua>,
    <aspect:ordo>, <aspect:perditio>, <aspect:vitium>
];

function getAllBasicAspects(amount as int) as CTAspectStack[] {
    return [
        <aspect:aer> * amount,
        <aspect:terra> * amount,
        <aspect:ignis> * amount,
        <aspect:aqua> * amount,
        <aspect:ordo> * amount,
        <aspect:perditio> * amount
    ];
}

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
