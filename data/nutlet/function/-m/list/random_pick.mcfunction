# argument:
# --nutlet:var list.list[] : list that will pick one element randomly
#
# return:
# --nutlet:var list.out : a element of given array

execute store result storage nutlet:var list.length long 1 \
    run function nutlet:list/get_length

execute store result storage nutlet:var list.out long 1 \
    run function nutlet:list/roll with storage nutlet:var list

function nutlet:list/pick with storage nutlet:var list 