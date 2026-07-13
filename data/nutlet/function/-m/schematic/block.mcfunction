# argument:
# --Command Context : the executor, need a player.
# --nutlet:var schematic.id[string] : a namespace id of block
# --nutlet:var schematic.tick[int] : ticks that the phantom block of schematic will continue existing, 0 for infinite
# --nutlet:var schematic.transformation[float] : The rendering transformation applied to model after normal entity orientation https://minecraft.wiki/w/Display https://zh.minecraft.wiki/w/展示实体
# --nutlet:var schematic.bright[int] : brightness of the block display, -1 for auto
# --nutlet:var schematic.hasProp[enum{1b,*}] : whether the block has properties or not
# --nutlet:var schematic.prop[compound] (optional): block properties in json format string
# --nutlet:var schematic.dropData[enum{1b,*}] (optional) \
    : delete data nutlet:var schematic when function done, it include nutlet:var schematic.uuid
# --nutlet:var schematic.callback[string] (optional): a function will execute when block display entity created
# --nutlet:var schematic.alwaysShow[enum{1b,*}] (optional)

# return if block exists
execute if function nutlet:schematic/check_block \
    run return run \
        function nutlet:schematic/block_exist
data remove storage nutlet:var to_prop

# fill in default parameters of nutlet:var schematic.transformation
function nutlet:schematic/fill_default_trans

# get brightness if auto
execute if data storage nutlet:var schematic{bright:-1} \
    run function nutlet:schematic/auto_bright

# create block display entity
data modify storage nutlet:var schematic.dimension \
    set from entity @s Dimension
execute summon minecraft:block_display \
    run function nutlet:schematic/block_create

# recover brightness value
execute if data storage nutlet:var schematic{autoBright:1b} \
    run data modify storage nutlet:var schematic.bright set value -1

data remove storage nutlet:var schematic.autoBright

# clean up if dropData is set
execute if data storage nutlet:var schematic{dropData:1b} \
    run data remove storage nutlet:var schematic