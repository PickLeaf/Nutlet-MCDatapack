data modify storage nutlet:var config.result.set \
    set from entity @s \
    SelectedItem.components."minecraft:writable_book_content".pages[2].raw

execute if data storage nutlet:var config.result.set \
    run return run \
        function nutlet:config/modify/in

function nutlet:config/get_current_value_scoreboard \
    with storage nutlet:var config.result
function nutlet:config/get_current_value_storage \
    with storage nutlet:var config.result

execute if data storage nutlet:var config.result.acceptable \
    run function nutlet:config/hit/dialog_acceptable with \
        storage nutlet:var config.result
execute if data storage nutlet:var config.result.range \
    run function nutlet:config/hit/dialog_range with \
        storage nutlet:var config.result

data remove storage nutlet:var config