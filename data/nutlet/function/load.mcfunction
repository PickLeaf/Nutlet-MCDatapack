scoreboard objectives add Nutlet.Clac dummy
scoreboard objectives add Nutlet.Config dummy
function nutlet:util/exe {cmd:"gamerule commandBlockOutput false"}
function nutlet:util/exe {cmd:"gamerule command_block_output false"}

# kill display entities
kill @e[tag=nutlet.temp_display]

# register configs
data remove storage nutlet:config list
function nutlet:config
function #nutlet:configs
function nutlet:config/init

# register spells
data remove storage nutlet:mem spells
function nutlet:spell/default/register
function #nutlet:spells

# speak version, print info of datapack
data modify storage nutlet:config version_int set value \
    [I;1,0,0]
execute unless data storage nutlet:config \
{version:"V1.0"} run return \
    run return run \
        function nutlet:version_changed {version:"V1.0"}
execute if data storage nutlet:config {showVersion:1b} \
    run function nutlet:print/info