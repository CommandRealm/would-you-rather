function scenario:fail_scenario
tellraw @s [{"text":"<Referee>","color":"light_purple","bold":true},{"text":" You've been hit!","bold":false}]
execute unless entity @a[team=pd,tag=playing,gamemode=adventure] run function scenario:play_dodgeball/end