#packmode normal
#priority 2001

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

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
