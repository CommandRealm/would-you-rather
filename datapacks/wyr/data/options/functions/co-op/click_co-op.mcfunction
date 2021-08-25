summon area_effect_cloud -937.18 79.4 -129.13 {Tags:["check_sign","remove","check_co-op"],Duration:20}
summon area_effect_cloud -937.24 79.4 -129.13 {Tags:["check_sign","remove","check_co-op"],Duration:20}
summon area_effect_cloud -937.12 79.4 -129.13 {Tags:["check_sign","remove","check_co-op"],Duration:20}
summon area_effect_cloud -937.82 79.4 -129.13 {Tags:["check_sign","add","check_co-op"],Duration:20}
summon area_effect_cloud -937.88 79.4 -129.13 {Tags:["check_sign","add","check_co-op"],Duration:20}
summon area_effect_cloud -937.76 79.4 -129.13 {Tags:["check_sign","add","check_co-op"],Duration:20}

function options:co-op/raycast
kill @e[tag=check_sign]