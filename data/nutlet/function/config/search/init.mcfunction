data modify storage nutlet:var config.temp_list \
    set from storage nutlet:config list
data modify storage nutlet:var config.print_list set value []
function nutlet:config/search/loop
data remove storage nutlet:var match