# argument:
# --Function Macro 'handler'[string] : a function will execute in execution position per tick
# --Function Macro 'callback'[string] : a function will execute when tick entity created

$execute summon minecraft:armor_stand \
    run function nutlet:schematic/tick_create \
        {handler:"$(handler)", callback:"$(callback)"}