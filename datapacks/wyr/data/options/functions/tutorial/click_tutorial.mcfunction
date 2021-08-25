summon area_effect_cloud -931.18 79.4 -129.13 {Tags:["check_sign","remove","check_tutorial"],Duration:20}
summon area_effect_cloud -931.24 79.4 -129.13 {Tags:["check_sign","remove","check_tutorial"],Duration:20}
summon area_effect_cloud -931.12 79.4 -129.13 {Tags:["check_sign","remove","check_tutorial"],Duration:20}
summon area_effect_cloud -931.82 79.4 -129.13 {Tags:["check_sign","add","check_tutorial"],Duration:20}
summon area_effect_cloud -931.88 79.4 -129.13 {Tags:["check_sign","add","check_tutorial"],Duration:20}
summon area_effect_cloud -931.76 79.4 -129.13 {Tags:["check_sign","add","check_tutorial"],Duration:20}

function options:tutorial/raycast
kill @e[tag=check_sign]