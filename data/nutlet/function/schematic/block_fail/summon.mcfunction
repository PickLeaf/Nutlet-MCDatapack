data merge entity @s {\
    shadow: 0b,\
    width: 1f,\
    height: 1f,\
    see_through: 1b,\
    billboard: "vertical",\
    transformation:{scale: [2f,2f,2f]}}
data modify entity @s text \
    set from storage nutlet:var text.text

data modify storage nutlet:var schedule.delay \
    set from storage nutlet:var schematic.tick
function nutlet:-m/schedule/kill