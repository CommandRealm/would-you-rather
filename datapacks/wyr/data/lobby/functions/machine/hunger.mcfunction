


execute as @a[tag=!playing,nbt={Inventory:[{tag:{vending_machine:1}}]}] at @s unless entity @s[scores={hunger=19..}] run effect give @s saturation
execute as @a[tag=!playing,nbt={Inventory:[{tag:{vending_machine:1}}]}] unless entity @s[scores={hunger=..19}] run effect give @s hunger 1 255 true
effect clear @a[tag=!playing,nbt={Inventory:[{tag:{vending_machine:1}}]},scores={hunger=..18}] hunger
effect give @a[tag=!playing,nbt={Inventory:[{tag:{vending_machine:1}}]},scores={hunger=..18}] saturation 1 0 true