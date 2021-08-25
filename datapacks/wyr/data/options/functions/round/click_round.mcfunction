summon area_effect_cloud -929.18 79.4 -130.13 {Tags:["check_sign","remove","check_round"],Duration:20}
summon area_effect_cloud -929.24 79.4 -130.13 {Tags:["check_sign","remove","check_round"],Duration:20}
summon area_effect_cloud -929.12 79.4 -130.13 {Tags:["check_sign","remove","check_round"],Duration:20}
summon area_effect_cloud -929.82 79.4 -130.13 {Tags:["check_sign","add","check_round"],Duration:20}
summon area_effect_cloud -929.88 79.4 -130.13 {Tags:["check_sign","add","check_round"],Duration:20}
summon area_effect_cloud -929.76 79.4 -130.13 {Tags:["check_sign","add","check_round"],Duration:20}

function options:round/raycast
kill @e[tag=check_sign]