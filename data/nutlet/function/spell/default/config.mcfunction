execute unless data storage nutlet:config firstCraftedFlag \
    run return run \
        function nutlet:spell/first

execute if data storage nutlet:config {modifyLock:1b} \
    unless entity @s[tag=nutlet.config_privilege] \
    run return run \
        function nutlet:config/no_privilege

data modify storage nutlet:var config.1 \
    set from entity @s \
    SelectedItem.components."minecraft:writable_book_content".pages[1].raw

execute if data storage nutlet:var config.1 \
    run return run function nutlet:config/spell_in


function nutlet:config/print/all

data remove storage nutlet:var config