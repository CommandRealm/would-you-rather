team join wyr @a[tag=playing]
##execute if score $toggle commercial matches 1 unless entity @a[tag=playing,tag=!selected] run function commercial:setup
##reimplement these if commercials are added.
##execute unless score $toggle commercial matches 1 unless entity @a[tag=playing,tag=!selected] run function show:check_win
clear @a[tag=playing]