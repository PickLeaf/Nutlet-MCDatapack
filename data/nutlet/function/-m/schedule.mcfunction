# argument:
# --nutlet:var schedule.task.handler[string] : a function
# --nutlet:var schedule.task.data[compound] : when 'handler' be execute, 'data' will appear again in nutlet:var data
# --nutlet:var schedule.tick[int] : need > 1
# --nutlet:var schematic.keepData[enum{1b,*}] (optional): doesn't delete data nutlet:var schedule when function done

# standard handler:
# --nutlet:handler/kill : kill an entity via uuid(hex format) provide by --nutlet:var schedule.task.data.uuid

function nutlet:schedule/append_exe with storage \
    nutlet:var schedule

execute store result score A Nutlet.Clac \
    run time query gametime
execute store result score B Nutlet.Clac \
    run data get storage nutlet:var schedule.tick
scoreboard players operation A Nutlet.Clac += B Nutlet.Clac
execute store result storage \
    nutlet:var schedule.task.timeStamp long 1 \
        run scoreboard players get A Nutlet.Clac

data modify storage nutlet:pvt schedule \
    append from storage nutlet:var schedule.task

execute if data storage nutlet:var schedule{keepData:1b} \
    run return fail
data remove storage nutlet:var schedule