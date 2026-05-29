data remove storage nutlet:var to_prop

# clean up if dropData is set
execute if data storage nutlet:var schematic{dropData:1b} \
    run data remove storage nutlet:var schematic