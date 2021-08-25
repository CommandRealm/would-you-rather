execute if score $game state matches 0 run function options:scenario/all_on
execute unless score $game state matches 0 run function options:scenario/invalid_press
setblock -926 62 -132 polished_blackstone_button[facing=south,powered=false]