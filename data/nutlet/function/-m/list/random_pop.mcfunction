# argument:
# --nutlet:var list.list[] : list that will pop one element randomly
#
# return:
# --nutlet:var list.out : a element of given array, it will delete from origin list

execute store result storage nutlet:var list.length long 1 \
    run function nutlet:list/get_length

execute store result storage nutlet:var list.out long 1 \
    run function nutlet:list/roll with storage nutlet:var list

function nutlet:list/pop with storage nutlet:var list