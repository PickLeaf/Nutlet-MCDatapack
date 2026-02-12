execute unless data storage nutlet:config {modifyLock:1b} \
    run tag @s add nutlet.config_privilege
execute unless data storage nutlet:config {modifyLock:1b} \
    if entity @s[tag=nutlet.config_privilege] \
    run data modify storage nutlet:config modifyLock set value 1b
execute if data storage nutlet:config {modifyLock:1b} \
    unless entity @s[tag=nutlet.config_privilege] \
    run return fail

data modify storage nutlet:var config.1 \
    set from entity @s \
    SelectedItem.components."minecraft:writable_book_content".pages[1].raw

execute if data storage nutlet:var config.1 \
    run return run function nutlet:config/spell_in


function nutlet:config/print/all

data remove storage nutlet:var config