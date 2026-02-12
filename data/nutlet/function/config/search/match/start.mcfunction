data modify storage nutlet:var match.str_char \
    set string storage nutlet:var match.str 0 1
data modify storage nutlet:var match.target_char \
    set string storage nutlet:var match.target 0 1

execute if data storage nutlet:var match.str_char \
    run return run \
        function nutlet:config/search/match/loop

return fail