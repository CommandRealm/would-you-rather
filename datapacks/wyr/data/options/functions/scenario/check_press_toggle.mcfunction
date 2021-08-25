execute if score $game state matches 0 run function options:scenario/press_toggle
execute unless score $game state matches 0 run function options:scenario/invalid_press
setblock -928 62 -132 polished_blackstone_button[facing=south,powered=false]