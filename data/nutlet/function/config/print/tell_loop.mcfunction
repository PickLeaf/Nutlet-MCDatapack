function nutlet:config/get_current_value_scoreboard \
    with storage nutlet:var config.result
function nutlet:config/get_current_value_storage \
    with storage nutlet:var config.result

function nutlet:config/print/to_dialog with \
    storage nutlet:var config.result

data remove storage nutlet:var config.result
data modify storage nutlet:var config.result \
    set from storage nutlet:var config.print_list[-1]
data remove storage nutlet:var config.print_list[-1]
execute if data storage nutlet:var config.result \
    run function nutlet:config/print/tell_loop