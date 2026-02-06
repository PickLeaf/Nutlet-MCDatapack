# argument:
# --Command Context : the execute position where the brightness is calculated

# return:
# --nutlet:var bright.brightness[string] : brightness in the execute position

execute align xyz positioned ~0.5 ~0.5 ~0.5 \
    run function nutlet:brightness/direct
data modify storage nutlet:var bright.brightness \
    set from storage nutlet:var bright.temp
execute if data storage nutlet:var bright{brightness:0} \
    unless block ~ ~ ~ #minecraft:air \
    run function nutlet:brightness/mix
data remove storage nutlet:var bright.temp