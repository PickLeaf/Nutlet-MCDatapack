data modify storage nutlet:var data \
  set from storage nutlet:var schedule_exe_list[-1].data
function nutlet:schedule/go \
  with storage nutlet:var schedule_exe_list[-1]
data remove storage nutlet:var schedule_exe_list[-1]
execute if data storage nutlet:var schedule_exe_list[-1] \
  run function nutlet:schedule/loop