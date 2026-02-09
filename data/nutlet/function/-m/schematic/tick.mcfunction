# argument:
# --Function Macro 'handler'[string] : a function will execute in execution position per tick

$execute summon minecraft:armor_stand \
    run function nutlet:schematic/tick_create {handler:"$(handler)"}