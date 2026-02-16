scoreboard players reset A Nutlet.Clac
$scoreboard players set A Nutlet.Clac $(set)
$execute unless score A Nutlet.Clac matches $(range) \
    run return fail
$scoreboard players set $(objective) Nutlet.Config $(set)
data modify storage nutlet:var config.result.success set value 1b
