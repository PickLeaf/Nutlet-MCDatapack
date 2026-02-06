function nutlet:-m/brightness
data modify storage nutlet:var schematic.bright \
    set from storage nutlet:var bright.brightness
data modify storage nutlet:var schematic.autoBright set value 1b