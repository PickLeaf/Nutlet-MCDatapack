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
data remove storage nutlet:spell list
function nutlet:spell/default/register
function #nutlet:spells

# inject version, print info of datapack
# 不要忘了修改nutlet:get_version！！！
# 还有pack.mcmeta！！！
execute unless data storage nutlet:config \
{version:"V1.2"} run return \
    run return run \
        function nutlet:version_changed {version:"V1.2"}
execute if data storage nutlet:config {showVersion:1b} \
    run function nutlet:print/info