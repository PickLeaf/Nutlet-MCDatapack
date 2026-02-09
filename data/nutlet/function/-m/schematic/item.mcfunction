# argument:
# --Command Context : the execute rotation
# --nutlet:var schematic.id[string] : a namespace id of item
# --nutlet:var schematic.tick[int] : ticks that the phantom item of schematic will continue existing, 0 for infinite
# --nutlet:var schematic.transformation[float] : The rendering transformation applied to model after normal entity orientation https://minecraft.wiki/w/Display https://zh.minecraft.wiki/w/展示实体
# --nutlet:var schematic.bright[int] : brightness of the item display, -1 for auto
# --Function Macro 'hasComponent'[enum{"true","false"}] : whether the item has component or not
# --nutlet:var schematic.component[compound] (optional): item component in json format string
# --nutlet:var schematic.keepData[enum{1b,*}] (optional): doesn't delete data nutlet:var item when function done
#
# return:
# --nutlet:var item.uuid[string] : hex format of summoned item display entity UUID

# fill in default parameters of nutlet:var schematic.transformation
function nutlet:schematic/fill_default_trans

# get brightness if auto
execute if data storage nutlet:var schematic{bright:-1} \
    run function nutlet:schematic/auto_bright

# create item display entity
$execute if predicate nutlet:$(hasComponent) \
    run data modify storage nutlet:var schematic.hasComponent set value 1b
data modify storage nutlet:var schematic.dimension \
    set from entity @s Dimension
execute summon minecraft:item_display \
    run function nutlet:schematic/item_create

# recover brightness value
execute if data storage nutlet:var schematic{autoBright:1b} \
    run data modify storage nutlet:var schematic.bright set value -1

data remove storage nutlet:var schematic.hasComponent
data remove storage nutlet:var schematic.autoBright
data remove storage nutlet:var schematic.dimension

# clean up unless keepData is set
execute if data storage nutlet:var schematic{keepData:1b} \
    run return fail
data remove storage nutlet:var schematic