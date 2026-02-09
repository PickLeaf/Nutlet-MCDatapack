# argument:
# --nutlet:var schematic.id[string] : a namespace id of block
# --nutlet:var schematic.tick[int] : ticks that the phantom block of schematic will continue existing, 0 for infinite
# --nutlet:var schematic.transformation[float] : The rendering transformation applied to model after normal entity orientation https://minecraft.wiki/w/Display https://zh.minecraft.wiki/w/展示实体
# --nutlet:var schematic.bright[int] : brightness of the block display, -1 for auto
# --Function Macro 'hasProp'[enum{"true","false"}] : whether the block has properties or not
# --nutlet:var schematic.prop[compound] (optional): block properties in json format string
# --nutlet:var schematic.keepData[enum{1b,*}] (optional) \
    : doesn't delete data nutlet:var schematic when function done, it include nutlet:var schematic.uuid
#
# return:
# --nutlet:var schematic.uuid[string] : hex format of summoned block display entity UUID

data remove storage nutlet:var schematic.hasProp
$execute if predicate nutlet:$(hasProp) \
    run data modify storage nutlet:var schematic.hasProp set value 1b

# return if block exists
execute unless function nutlet:schematic/check_block \
    run return run \
        data remove storage nutlet:var to_prop
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

data remove storage nutlet:var schematic.hasProp
data remove storage nutlet:var schematic.autoBright
data remove storage nutlet:var schematic.dimension

# clean up unless keepData is set
execute if data storage nutlet:var schematic{keepData:1b} \
    run return fail
data remove storage nutlet:var schematic