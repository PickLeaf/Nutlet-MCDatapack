# argument:
# --nutlet:var tick.handler[string] : a function will execute in execution position per tick
# --nutlet:var tick.callback[string] (optional): a function will execute when tick entity created
# --nutlet:var tick.keepData[enum{1b,*}] (optional): doesn't delete data nutlet:var schematic when function done

execute summon minecraft:armor_stand \
    run function nutlet:tick/create
execute if data storage nutlet:var tick{keepData:1b} \
    run return 1
data remove storage nutlet:var tick