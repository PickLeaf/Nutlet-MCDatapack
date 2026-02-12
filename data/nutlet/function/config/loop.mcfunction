data modify storage nutlet:config one \
    set from storage nutlet:config configs_init_list[-1]

execute if data storage nutlet:config one{type:"scoreboard"} \
    unless function nutlet:config/scoreboard/init \
    run function nutlet:config/scoreboard/set_deafult \
        with storage nutlet:config one
execute if data storage nutlet:config one{type:"storage"} \
    unless function nutlet:config/storage/check \
    run function nutlet:config/storage/set_deafult

data remove storage nutlet:config configs_init_list[-1]
execute if data storage nutlet:config configs_init_list[-1] \
    run function nutlet:config/loop