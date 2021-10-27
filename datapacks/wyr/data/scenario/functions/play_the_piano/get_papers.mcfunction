clear @s filled_map
clear @s ghast_tear
kill @e[type=item,distance=..3]
item replace entity @s hotbar.0 with filled_map{map:1012,ptp_paper:1,display:{Name:'[{"text":"Drop to play the ","color":"gray","italic":false},{"text":"RED","color":"red"},{"text":" note.","color":"gray"}]'}}
item replace entity @s hotbar.1 with filled_map{map:1013,ptp_paper:2,display:{Name:'[{"text":"Drop to play the ","color":"gray","italic":false},{"text":"ORANGE","color":"#FFA500"},{"text":" note.","color":"gray"}]'}}
item replace entity @s hotbar.2 with filled_map{map:1014,ptp_paper:3,display:{Name:'[{"text":"Drop to play the ","color":"gray","italic":false},{"text":"YELLOW","color":"yellow"},{"text":" note.","color":"gray"}]'}}
item replace entity @s hotbar.3 with filled_map{map:1015,ptp_paper:4,display:{Name:'[{"text":"Drop to play the ","color":"gray","italic":false},{"text":"GREEN","color":"green"},{"text":" note.","color":"gray"}]'}}
item replace entity @s hotbar.4 with filled_map{map:1016,ptp_paper:5,display:{Name:'[{"text":"Drop to play the ","color":"gray","italic":false},{"text":"LIGHT BLUE","color":"aqua"},{"text":" note.","color":"gray"}]'}}
item replace entity @s hotbar.5 with filled_map{map:1017,ptp_paper:6,display:{Name:'[{"text":"Drop to play the ","color":"gray","italic":false},{"text":"BLUE","color":"dark_blue"},{"text":" note.","color":"gray"}]'}}
item replace entity @s hotbar.6 with filled_map{map:1018,ptp_paper:7,display:{Name:'[{"text":"Drop to play the ","color":"gray","italic":false},{"text":"PINK","color":"light_purple"},{"text":" note.","color":"gray"}]'}}
item replace entity @s hotbar.7 with filled_map{map:1019,ptp_paper:8,display:{Name:'[{"text":"Drop to play the ","color":"gray","italic":false},{"text":"PURPLE","color":"dark_purple"},{"text":" note.","color":"gray"}]'}}
item replace entity @s hotbar.8 with ghast_tear{display:{Name:'[{"text":"INFO: ","color":"white","bold":true},{"text":"Drop a block to play notes on the piano!","color":"gray","bold":false,"italic":false}]'}}