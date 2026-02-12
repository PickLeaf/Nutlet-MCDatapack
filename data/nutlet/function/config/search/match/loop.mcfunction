execute unless function nutlet:config/search/match/diff \
    if function nutlet:config/search/match/child_loop \
        run return 1

function nutlet:config/search/match/eat_str
execute if data storage nutlet:var match.str_char \
    run return run \
        function nutlet:config/search/match/loop

return fail