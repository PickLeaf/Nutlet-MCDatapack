$data modify storage nutlet:var random.out set from storage nutlet:var random.list[-$(out)]
$data remove storage nutlet:var random.list[-$(out)]