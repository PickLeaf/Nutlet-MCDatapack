# this is a very danger operate!!!
data modify storage nutlet:var schedule_exe_list \
  set from storage nutlet:pvt schedule
data remove storage nutlet:pvt schedule
schedule clear nutlet:schedule/exe
function nutlet:schedule/loop
data remove storage nutlet:var schedule_exe_list
data remove storage nutlet:var data