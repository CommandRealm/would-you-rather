tag @e[tag=blue_select] remove blue_select

team join blue @e[tag=wyrselect]

tellraw @a [{"selector":"@e[tag=wyrselect]"}]

tag @e[tag=wyrselect] add blue_select

tag @e[tag=wyrselect] add wyrselected

tag @e[tag=wyrselect] add wyr_choice

execute positioned -934 86 12 as @e[type=area_effect_cloud,tag=wyrselect] run function show:paste_tv

tag @e[tag=wyrselected] remove wyrselect