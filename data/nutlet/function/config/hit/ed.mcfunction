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
tellraw @s [\
    {"text": "\"",\
        "color": "gold"},\
    {"type": "nbt",\
        "storage": "nutlet:var",\
        "nbt": "config.result.name",\
        "color": "gold"},\
    {"text": "\":\n",\
        "color": "gold"},\
    {"type": "nbt",\
        "storage": "nutlet:var",\
        "nbt": "config.result.description",\
        "color": "white"},\
    {"text": "\n"},\
    {"translate": "nutlet.info.config.current_value",\
        "fallback": "Current Value: ",\
        "color": "gold"},\
    {"type": "nbt",\
        "storage": "nutlet:var",\
        "nbt": "config.result.curent_value",\
        "color": "dark_green"},\
    {"text": "\n"},\
    {"translate": "nutlet.info.config.default_value",\
        "fallback": "Default Value: ",\
        "color": "gold"},\
    {"type": "nbt",\
        "storage": "nutlet:var",\
        "nbt": "config.result.default",\
        "color": "dark_gray"}]
execute if data storage nutlet:var config.result.acceptable \
    run tellraw @s [\
        {"translate": "nutlet.info.config.acceptable_value",\
            "fallback": "Acceptable Value: ",\
            "color": "gold"},\
        {"type": "nbt",\
            "storage": "nutlet:var",\
            "nbt": "config.result.acceptable",\
            "color": "gray"}]
execute if data storage nutlet:var config.result.range \
    run tellraw @s [\
        {"translate": "nutlet.info.config.value_range",\
            "fallback": "Value Range: ",\
            "color": "gold"},\
        {"type": "nbt",\
            "storage": "nutlet:var",\
            "nbt": "config.result.range",\
            "color": "gray"}]

data remove storage nutlet:var config