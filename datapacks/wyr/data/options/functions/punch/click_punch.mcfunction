summon area_effect_cloud -939.18 79.4 -130.13 {Tags:["check_sign","remove","check_auto_ready"],Duration:20}
summon area_effect_cloud -939.24 79.4 -130.13 {Tags:["check_sign","remove","check_auto_ready"],Duration:20}
summon area_effect_cloud -939.12 79.4 -130.13 {Tags:["check_sign","remove","check_auto_ready"],Duration:20}
summon area_effect_cloud -939.82 79.4 -130.13 {Tags:["check_sign","add","check_auto_ready"],Duration:20}
summon area_effect_cloud -939.88 79.4 -130.13 {Tags:["check_sign","add","check_auto_ready"],Duration:20}
summon area_effect_cloud -939.76 79.4 -130.13 {Tags:["check_sign","add","check_auto_ready"],Duration:20}

function options:punch/raycast
kill @e[tag=check_sign]