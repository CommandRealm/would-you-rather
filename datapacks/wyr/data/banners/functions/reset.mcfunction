##This becomes brown because fill replaces can't overwrite the same color and brown isn't used at all (yet)
execute if block ~ ~ ~ #banners[facing=north] run setblock ~ ~ ~ brown_wall_banner[facing=north]
execute if block ~ ~ ~ #banners[facing=west] run setblock ~ ~ ~ brown_wall_banner[facing=west]
execute if block ~ ~ ~ #banners[facing=south] run setblock ~ ~ ~ brown_wall_banner[facing=south]
execute if block ~ ~ ~ #banners[facing=east] run setblock ~ ~ ~ brown_wall_banner[facing=east]

execute if block ~ ~ ~ #banners[facing=north] run setblock ~ ~ ~ light_blue_wall_banner[facing=north]
execute if block ~ ~ ~ #banners[facing=west] run setblock ~ ~ ~ light_blue_wall_banner[facing=west]
execute if block ~ ~ ~ #banners[facing=south] run setblock ~ ~ ~ light_blue_wall_banner[facing=south]
execute if block ~ ~ ~ #banners[facing=east] run setblock ~ ~ ~ light_blue_wall_banner[facing=east]

kill @e[type=armor_stand,distance=..5,tag=banner_head]