data modify storage nutlet:var arg.function \
    set from storage nutlet:var spells_exe_list[-1].function
function nutlet:spell/exe with \
    storage nutlet:var arg
data remove storage nutlet:var spells_exe_list[-1]
execute if data storage nutlet:var spells_exe_list[-1] \
  run function nutlet:spell/loop