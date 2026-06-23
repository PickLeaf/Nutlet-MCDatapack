execute store result storage nutlet:var list.pair.key int 1 \
    run scoreboard players get B Nutlet.Clac
scoreboard players add B Nutlet.Clac 1
function nutlet:list/foreach_list/get \
    with storage nutlet:var list.pair

function nutlet:list/invoke_handler \
    with storage nutlet:var list

execute if score B Nutlet.Clac < A Nutlet.Clac \
    run function nutlet:list/foreach_list/loop