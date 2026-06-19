# argument:
# --Command Context : the executor, the entity will be kill.
#--nutlet:var schedule.delay[int] : the tick will delay
#--nutlet:var schedule.keepData[enum{1b,*}] (optional): doesn't delete data nutlet:var schematic when function done

data modify storage nutlet:var tick set value \
    {handler: "nutlet:schedule/kill/exe",\
    callback: "nutlet:schedule/kill/callback"}

data modify storage nutlet:var tick.UUID \
    set from entity @s UUID

execute at @s run function nutlet:-m/tick