execute \
    unless entity @p \
    run return \
        run schedule function nutlet:print/info 2t
function nutlet:print/version
function nutlet:print/link
function nutlet:print/error
function nutlet:print/macro \
    with storage nutlet:print cmd
data remove storage nutlet:print cmd