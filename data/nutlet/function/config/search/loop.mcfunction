data modify storage nutlet:var config.one \
    set from storage nutlet:var config.temp_list[-1]

data modify storage nutlet:var match.str \
    set from storage nutlet:var config.one.name
data modify storage nutlet:var match.target \
    set from storage nutlet:var config.1

execute if function nutlet:config/search/match/start \
    run data modify storage nutlet:var config.print_list \
        append from storage nutlet:var config.one

data remove storage nutlet:var config.temp_list[-1]
execute if data storage nutlet:var config.temp_list[-1] \
    run function nutlet:config/search/loop