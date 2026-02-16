execute if data storage nutlet:var schematic{tick:0} \
    run return fail
data modify storage nutlet:var to_prop.prop \
    set value ''
execute if data storage nutlet:var schematic{hasProp:1b} \
    run function nutlet:schematic/get_prop
data modify storage nutlet:var to_prop.id \
    set from storage nutlet:var schematic.id
return run function nutlet:schematic/check_block_ \
    with storage nutlet:var to_prop