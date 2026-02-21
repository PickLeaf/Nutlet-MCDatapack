# argument:
# --Function Macro 'handler'[string] : a function will execute in execution position per tick
# --nutlet:var schematic.callback[string] (optional): a function will execute when tick entity created
# --nutlet:var schematic.keepData[enum{1b,*}] (optional): doesn't delete data nutlet:var schematic when function done


$execute summon minecraft:armor_stand \
    run function nutlet:schematic/tick_create \
        {handler:"$(handler)"}
execute if data storage nutlet:var schematic{keepData:1b} \
    run return 1
data remove storage nutlet:var schematic