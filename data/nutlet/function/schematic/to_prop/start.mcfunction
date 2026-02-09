# argument:
# --nutlet:var to_prop.nbt[compound] : {facing:"up"}
#
# return:
# --nutlet:var to_prop.prop[string] : facing=up
execute summon text_display \
    run function nutlet:schematic/to_prop/to_str

data modify storage nutlet:var to_prop.prop set value ""

data modify storage nutlet:var to_prop.char \
    set string storage nutlet:var to_prop.nbt 0 1
execute if data storage nutlet:var to_prop.char \
    run function nutlet:schematic/to_prop/loop

data remove storage nutlet:var to_prop.temp
