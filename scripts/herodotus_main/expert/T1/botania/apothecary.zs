#packmode expert
#modloaded bathappymod
#priority -10

//Remove
val removingArray = [
    "endoflame",
    "orechid",
    "munchdew",
    "entropinnyum",
    "kekimurus",
    "gourmaryllis",
    "danelifeon",
    "shulk_me_not",
    "rafflowsia",
    "puredaisy"
] as string[];

for remove in removingArray{
    mods.botania.Apothecary.removeRecipe(remove);
}

