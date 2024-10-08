#>onleave:_/load
#--------------------
# @LOAD
#--------------------

# load
scoreboard players set *onleave load-status 1

#declare storage onleave:var
#declare storage onleave:in
#declare storage onleave:out
#declare storage onleave:data
#declare storage onleave:hook
#declare storage onleave:implement

# scoreboards
scoreboard objectives add -onleave dummy
scoreboard objectives add --onleave dummy

data modify storage onleave:data _.players set value []
execute as @a run function onleave:_/on_join

# tick
schedule clear onleave:_/tick
function onleave:_/tick