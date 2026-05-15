# argument:
# --nutlet:var random.list[] : list that will pick one element randomly
#
# return:
# --nutlet:var random.out : a element of given array

execute store result storage nutlet:var random.length long 1 \
    run function nutlet:random/get_length

execute store result storage nutlet:var random.out long 1 \
    run function nutlet:random/roll with storage nutlet:var random

function nutlet:random/pick with storage nutlet:var random