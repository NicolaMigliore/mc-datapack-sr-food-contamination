execute as @e[type=item,nbt={Item:{id:"minecraft:raw_copper"}}] at @s run execute as @e[type=item, nbt={Item:{id:"minecraft:spider_eye"}},limit=1,sort=nearest,distance=0..1] at @s if block ~ ~ ~ minecraft:water_cauldron run summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:poisonous_potato",Count:1b,tag:{CustomModelData:1918001,display:{Name:'[{"text":"Decontamination Powder","italic":false,"color":"aqua"}]',Lore:['[{"text":"Useful to make food good again","italic":false,"color":"dark_purple"}]']}}},Tags:["fresh_craft"]}

execute as @e[tag=fresh_craft] at @s run execute as @e[type=item,nbt={Item:{id:"minecraft:raw_copper"}},limit=1,sort=nearest] run function srfc:decontamination/remove_copper
execute as @e[tag=fresh_craft] at @s run execute as @e[type=item,nbt={Item:{id:"minecraft:spider_eye"}},limit=1,sort=nearest,distance=0..1] run function srfc:decontamination/remove_spider_eye

execute as @e[tag=fresh_craft] run tag @s remove fresh_craft