function nutlet:config/modify/storage \
    with storage nutlet:var config.result
function nutlet:config/modify/scoreboard \
    with storage nutlet:var config.result

execute unless data storage nutlet:var config.result.success \
    run return run function nutlet:config/modify/fail

function nutlet:config/modify/success with storage config.result

data remove storage nutlet:var config
