#packmode normal
#priority 2001

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

//parts and colors
static colors as string[] = ["red", "yellow", "blue"];
static shapes as string[] = ["rhombus", "spherical", "square"];

//list all vanilla mob class names, powered by https://mcreator.net/wiki/entity-ids
static allVanillaMobClassNames as string[] = [
    "EntityBat", "EntityBlaze", "EntityBoat", "EntityCaveSpider", "EntityChicken", "EntityCow", "EntityCreeper",
    "EntityDonkey", "EntityDragon", "EntityElderGuardian", "EntityEnderman", "EntityEvoker", "EntityGhast",
    "EntityGiantZombie", "EntityGolem", "EntityGuardian", "EntityHorse", "EntityHusk", "EntityIllusionIllager",
    "EntityIronGolem", "EntityLlama", "EntityMooshroom", "EntityMule", "EntityOcelot", "EntityParrot", 
    "EntityPig", "EntityPigZombie", "EntityPlayer", "EntityPolarBear", "EntityRabbit", "EntitySheep", 
    "EntityShulker", "EntitySilverfish", "EntitySkeleton", "EntitySkeletonHorse", "EntitySlime", "EntitySnowman", 
    "EntitySpellcasterIllager", "EntitySpider", "EntitySquid", "EntityStray", "EntityVex", "EntityVillager", 
    "EntityVindicator", "EntityWitch","EntityWither","EntityWitherSkeleton","EntityWitherSkull","EntityWolf",
    "EntityZombie","EntityZombieHorse","EntityZombieVillager"
];
