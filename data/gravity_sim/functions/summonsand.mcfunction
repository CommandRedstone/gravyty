tag @s remove new

execute @s[tag=size1] ~ ~ ~ summon falling_block ~ ~ ~ {NoGravity:1,Time:1,Tags:[new,size1],Glowing:1,BlockState:{Name:"stone",Properties:{state:"0"}}}
execute @s[tag=size2] ~ ~ ~ summon falling_block ~ ~ ~ {NoGravity:1,Time:1,Tags:[new,size2],Glowing:1,BlockState:{Name:"stone",Properties:{state:"1"}}}
execute @s[tag=size3] ~ ~ ~ summon falling_block ~ ~ ~ {NoGravity:1,Time:1,Tags:[new,size3],Glowing:1,BlockState:{Name:"stone",Properties:{state:"2"}}}
execute @s[tag=size5] ~ ~ ~ summon falling_block ~ ~ ~ {NoGravity:1,Time:1,Tags:[new,size5],Glowing:1,BlockState:{Name:"stone",Properties:{state:"3"}}}
execute @s[tag=size10] ~ ~ ~ summon falling_block ~ ~ ~ {NoGravity:1,Time:1,Tags:[new,size10],Glowing:1,BlockState:{Name:"stone",Properties:{state:"4"}}}
execute @s[tag=size50] ~ ~ ~ summon falling_block ~ ~ ~ {NoGravity:1,Time:1,Tags:[new,size50],Glowing:1,BlockState:{Name:"stone",Properties:{state:"5"}}}
execute @s[tag=size100] ~ ~ ~ summon falling_block ~ ~ ~ {NoGravity:1,Time:1,Tags:[new,size100],Glowing:1,BlockState:{Name:"stone",Properties:{state:"6"}}}
execute @s[tag=size500] ~ ~ ~ summon falling_block ~ ~ ~ {NoGravity:1,Time:1,Tags:[new,size500],Glowing:1,BlockState:{Name:"stone",Properties:{state:"7"}}}

kill @s

execute @e[type=falling_block,tag=new] ~ ~ ~ function game:setscore