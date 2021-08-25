summon area_effect_cloud -933.18 79.4 -128.13 {Tags:["check_sign","remove","check_awards"],Duration:20}
summon area_effect_cloud -933.24 79.4 -128.13 {Tags:["check_sign","remove","check_awards"],Duration:20}
summon area_effect_cloud -933.12 79.4 -128.13 {Tags:["check_sign","remove","check_awards"],Duration:20}
summon area_effect_cloud -933.82 79.4 -128.13 {Tags:["check_sign","add","check_awards"],Duration:20}
summon area_effect_cloud -933.88 79.4 -128.13 {Tags:["check_sign","add","check_awards"],Duration:20}
summon area_effect_cloud -933.76 79.4 -128.13 {Tags:["check_sign","add","check_awards"],Duration:20}

function options:awards/raycast
kill @e[tag=check_sign]