scoreboard players set $time startup_timer -101
scoreboard objectives remove playing
data modify entity @e[type=area_effect_cloud,tag=start_button_text,limit=1] CustomName set value '[{"text":"- ","color":"gray"},{"text":"⸮","color":"blue","bold":true},{"text":" Start ","color":"aqua"},{"text":"?","color":"yellow","bold":true},{"text":" -","color":"gray"}]'
