tag @e[tag=yellow_select] remove yellow_select

team join yellow @e[tag=wyrselect]

tellraw @a [{"selector":"@e[tag=wyrselect]"}]

tag @e[tag=wyrselect] add yellow_select

tag @e[tag=wyrselect] add wyrselected

tag @e[tag=wyrselect] add wyr_choice

execute positioned -949 86 12 as @e[type=area_effect_cloud,tag=wyrselect] run function show:paste_tv

tag @e[tag=wyrselected] remove wyrselect