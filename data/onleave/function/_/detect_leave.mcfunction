#> onleave:_/detect_leave
#--------------------
# ./tick
#--------------------

execute as @a run function onleave:_/detect_leave.1
data modify storage six:in difference.a set from storage onleave:var leave.current_players
data modify storage six:in difference.b set from storage onleave:data _.players
function six:api/array/set/difference
data modify storage onleave:var leave.left set from storage six:out difference.unique_b

execute if data storage onleave:var leave.left[] run function onleave:_/each_left

data modify storage onleave:data _.players set from storage onleave:var leave.current_players
data remove storage onleave:var leave