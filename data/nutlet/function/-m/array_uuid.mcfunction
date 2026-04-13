# argument:
# --nutlet:var uuid.hex[string] : needed uuid in hex array.
#
# return:
# --nutlet:var uuid.array[array[int@4]] : int array of given uuid

function nutlet:uuid/hex2int/trans_get with storage nutlet:var uuid
data remove storage nutlet:var uuid.hex