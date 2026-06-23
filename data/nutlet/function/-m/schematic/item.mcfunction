# argument:
# --Command Context : the executor, need a player.
# --Command Context : the execute rotation
# --nutlet:var schematic.id[string] : a namespace id of item
# --nutlet:var schematic.tick[int] : ticks that the phantom item of schematic will continue existing, 0 for infinite
# --nutlet:var schematic.transformation[float] : The rendering transformation applied to model after normal entity orientation https://minecraft.wiki/w/Display https://zh.minecraft.wiki/w/展示实体
# --nutlet:var schematic.bright[int] : brightness of the item display, -1 for auto
# --nutlet:var schematic.hasComponent[enum{1b,*}] : whether the item has component or not
# --nutlet:var schematic.component[compound] (optional): item component in json format string
# --nutlet:var schematic.dropData[enum{1b,*}] (optional): delete data nutlet:var item when function done
# --nutlet:var schematic.callback[string] (optional): a function will execute when item display entity created

# fill in default parameters of nutlet:var schematic.transformation
function nutlet:schematic/fill_default_trans

# get brightness if auto
execute if data storage nutlet:var schematic{bright:-1} \
    run function nutlet:schematic/auto_bright

# create item display entity
data modify storage nutlet:var schematic.dimension \
    set from entity @s Dimension
execute summon minecraft:item_display \
    run function nutlet:schematic/item_create

# recover brightness value
execute if data storage nutlet:var schematic{autoBright:1b} \
    run data modify storage nutlet:var schematic.bright set value -1

data remove storage nutlet:var schematic.autoBright

# clean up if dropData is set
execute if data storage nutlet:var schematic{dropData:1b} \
    run data remove storage nutlet:var schematic