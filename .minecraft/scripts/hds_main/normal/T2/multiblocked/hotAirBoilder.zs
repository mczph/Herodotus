#packmode normal
#loader multiblocked
#priority -1

import scripts.hds_main.utils.modloader.isInvalid;

if(!isInvalid){
    <mbd:recipe_map:hot_air_boiler>.start()
        .duration(10)
        .inputFluids(<liquid:water> * 60)
        .inputHotAir(230)
        .outputFluids(<liquid:steam> * 600)
        .buildAndRegister();
}
