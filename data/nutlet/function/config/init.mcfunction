data modify storage nutlet:config configs_init_list \
    set from storage nutlet:config list
function nutlet:config/loop
data remove storage nutlet:config configs_init_list
data remove storage nutlet:config one