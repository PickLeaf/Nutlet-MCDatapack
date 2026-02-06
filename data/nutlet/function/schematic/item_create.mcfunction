data modify entity @s item_display \
    set value "none"
data modify entity @s item.id \
    set from storage nutlet:var schematic.id

execute if data storage nutlet:var schematic{hasComponent:1b} \
    run data modify entity @s item.components \
        set from storage nutlet:var schematic.component
function nutlet:schematic/created