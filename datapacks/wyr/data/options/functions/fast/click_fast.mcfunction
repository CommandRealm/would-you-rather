summon area_effect_cloud -935.18 79.4 -128.13 {Tags:["check_sign","remove","check_fast"],Duration:20}
summon area_effect_cloud -935.24 79.4 -128.13 {Tags:["check_sign","remove","check_fast"],Duration:20}
summon area_effect_cloud -935.12 79.4 -128.13 {Tags:["check_sign","remove","check_fast"],Duration:20}
summon area_effect_cloud -935.82 79.4 -128.13 {Tags:["check_sign","add","check_fast"],Duration:20}
summon area_effect_cloud -935.88 79.4 -128.13 {Tags:["check_sign","add","check_fast"],Duration:20}
summon area_effect_cloud -935.76 79.4 -128.13 {Tags:["check_sign","add","check_fast"],Duration:20}

function options:fast/raycast
kill @e[tag=check_sign]