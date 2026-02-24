# argument:
# --Command Context : the execute rotation
# --nutlet:var schematic.text[string] : Raw JSON Text, 1.21.5- format
# --nutlet:var schematic.tick[int] : ticks that the phantom item of schematic will continue existing, 0 for infinite
# --nutlet:var schematic.transformation[float] : The rendering transformation applied to model after normal entity orientation https://minecraft.wiki/w/Display https://zh.minecraft.wiki/w/展示实体
# --nutlet:var schematic.bright[int] : brightness of the item display, -1 for auto
# --nutlet:var schematic.mergeData[compound] (optional): the data will "/data merge" to text display entity
# --nutlet:var schematic.keepData[enum{1b,*}] (optional): doesn't delete data nutlet:var schematic when function done
#
# return:
# --nutlet:var schematic.uuid[string] : hex format of summoned item display entity UUID

# fill in default parameters of nutlet:var schematic.transformation
function nutlet:schematic/fill_default_trans
execute unless data storage nutlet:var schematic.mergeData \
    run data modify storage nutlet:var schematic.mergeData \
        set value {}

# get brightness if auto
execute if data storage nutlet:var schematic{bright:-1} \
    run function nutlet:schematic/auto_bright

# create item display entity
data modify storage nutlet:var schematic.dimension \
    set from entity @s Dimension
execute summon minecraft:text_display \
    run function nutlet:schematic/text_create \
        with storage nutlet:var schematic

# recover brightness value
execute if data storage nutlet:var schematic{autoBright:1b} \
    run data modify storage nutlet:var schematic.bright set value -1

data remove storage nutlet:var schematic.autoBright

# clean up unless keepData is set
execute if data storage nutlet:var schematic{keepData:1b} \
    run return fail
data remove storage nutlet:var schematic