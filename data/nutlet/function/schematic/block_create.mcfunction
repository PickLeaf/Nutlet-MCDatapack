data modify entity @s block_state.Name \
    set from storage nutlet:var schematic.id

execute if data storage nutlet:var schematic{hasProp:1b} \
    run data modify entity @s block_state.Properties \
        set from storage nutlet:var schematic.prop

function nutlet:schematic/created