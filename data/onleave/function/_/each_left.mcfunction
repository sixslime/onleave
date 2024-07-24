#> onleave:_/each_left
#--------------------
# ./detect_leave    
#--------------------

#-- HOOK : onleave:on_leave --
data modify storage onleave:hook on_leave append value {}
data modify storage onleave:hook on_leave[-1].info set from storage onleave:var leave.left[-1]
function #onleave:hook/on_leave
data remove storage onleave:hook on_leave[-1]
#-- > < --

data remove storage onleave:var leave.left[-1]
execute if data storage onleave:var leave.left[] run function onleave:_/each_left