$execute if data storage nutlet:var config.result.acceptable \
    unless data storage nutlet:var config.result{acceptable:[$(set)]} run return fail
$data modify storage $(storage_path) set value $(set)
data modify storage nutlet:var config.result.success set value 1b
