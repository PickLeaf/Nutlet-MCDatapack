tellraw @s [\
    {"translate": "nutlet.info.config.print",\
        "fallback": "Configurations found in this world:",\
        "color": "gold"}]
data remove storage nutlet:var config.result
data modify storage nutlet:var config.result \
    set from storage nutlet:var config.print_list[-1]
data remove storage nutlet:var config.print_list[-1]
execute if data storage nutlet:var config.result \
    run function nutlet:config/print/tell_loop
