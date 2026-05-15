# argument:
# --nutlet:var random.list[] : list that will pop one element randomly
#
# return:
# --nutlet:var random.out : a element of given array, it will delete from origin list

execute store result storage nutlet:var random.length long 1 \
    run function nutlet:random/get_length

execute store result storage nutlet:var random.out long 1 \
    run function nutlet:random/roll with storage nutlet:var random

function nutlet:random/pop with storage nutlet:var random