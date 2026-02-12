function nutlet:config/search/match/eat_str
function nutlet:config/search/match/eat_target

execute unless data storage nutlet:var match.target_char \
    run return 1

execute unless function nutlet:config/search/match/diff \
    run return run \
        function nutlet:config/search/match/child_loop

return fail