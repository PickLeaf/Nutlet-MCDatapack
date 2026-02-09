可供调用的函数都在命名空间 `Nutlet:-m` 下。<br>
# 用例
## nutlet:-m/hex_uuid
执行以下命令：
```mcfunction
data modify storage nutlet:var uuid set from entity @n[type=minecraft:pig] UUID
function nutlet:-m/hex_uuid
```
会在 `storage nutlet:var uuid.hex` 返回出 `@n[type=minecraft:pig]` 的UUID，使用有连字符的十六进制表示方式，这个字符串可以用来当作[目标选择器](https://zh.minecraft.wiki/w/%E7%9B%AE%E6%A0%87%E9%80%89%E6%8B%A9%E5%99%A8)选中实体。<br>
然后编写以下函数文件：
test:test.mcfunction
```mcfunction
tp $(hex) ~ 255 ~
```
并使用以下命令调用，可以将那头倒霉的猪传送到高空。
```mcfunction
function test:test with storage nutlet:var uuid
```
## nutlet:-m/schedule
先编写以下函数文件：<br>
`test:test.mcfunction`
```mcfunction
tellraw @a {"storage": "nutlet:var","nbt": "data.msg"}
```
然后执行以下命令：
```mcfunction
data modify storage nutlet:var schedule set value {tick:50,task:{handler:"test:test",data:{msg:"ooooooooh!"}}}
function nutlet:-m/schedule
```
会在50游戏刻(也就是2.5秒)后执行函数：`nutlet:test` ，`data`将在函数执行时放置在`nutlet:var data`供函数使用。你将在聊天框看到"ooooooooh!"。
## nutlet:-m/brightness
执行以下命令：
```mcfunction
function nutlet:-m/brightness
tellraw @a {"storage": "nutlet:var","nbt": "bright.brightness"}
```
会获得执行位置的亮度等级，内部使用`location_check`谓词检查穷举获得。如果执行位置亮度为0且不是空气，会从执行位置六个面挨着的方块里选取最大的那个亮度作为结果。结果存储在`nutlet:var bright.brightness`。
## nutlet:-m/facing/block
获得执行位置的方块的朝向，通过`nutlet:var facing.success`判断是否成功(1b成功,0b失败)。只有具有facing和orientation(仅合成器有)方块属性的方块可以成功。<br>
`nutlet:var facing.facing`返回朝向<br>
`nutlet:var facing.orientation`返回合成器方向<br>
`nutlet:var facing.x_rotation`，`nutlet:var facing.y_rotation`返回对应的旋转角度
## nutlet:-m/facing/entity
获得执行旋转角度对应的面朝方向，与F3界面的`Facing: `行一致。<br>
`nutlet:var facing.facing`返回对应的方块朝向<br>
`nutlet:var facing.orientation`返回对应的合成器方向<br>
`nutlet:var facing.x_rotation`，`nutlet:var facing.y_rotation`返回对应的旋转角度
## nutlet:-m/facing/block_axis_align
先编写以下函数文件：<br>
`test:test.mcfunction`
```mcfunction
setblock ^ ^ ^1 minecraft:diamond_block
```
然后站在一个具有朝向的方块上，用以下命令调用：
```mcfunction
# handler函数宏参数为一个函数的命名空间ID。使用"nutlet:-m/facing/block"修正执行朝向后自动调用。
execute positioned ~ ~-1 ~ run function nutlet:-m/facing/block_axis_align {handler:"test:test"}
```
会在在方块面朝的那一个方块放置一个钻石块。
## nutlet:-m/facing/entity_axis_align
与`nutlet:-m/facing/block_axis_align`相同，但使用`nutlet:-m/facing/entity`修正执行朝向。
## nutlet:-m/schematic/block
```mcfunction
data modify storage nutlet:var schematic set value {tick:100, transformation:{scale:[0.3f, 0.3f, 0.3f], translation:[-0.15f, -0.15f, -0.15f]}, id:"minecraft:diamond_block"}
# hasProp函数宏参数必须指定，只能为"false"或"true"，其他值会调用失败。
function nutlet:-m/schematic/block {hasProp:"false"}
```
会在执行位置summon一个方块展示实体(为钻石块)，并在100tick后消失，`transformation`标签会应用到展示实体的`transformation`标签。定时消失的功能由`nutlet:-m/schedule`实现。执行实体推荐为玩家，这会使得清除展示实体时自动`/forceload`强加载(`/execute if loaded`条件通过时)其所在区块，如果不是玩家可能会因为展示实体所在的区块被卸载而无法被清除(这种情况退出存档重进即可)。
```mcfunction
# 使用"prop"指定方块属性，会被应用到方块展示实体的"block_state.Properties"标签
# keepData:1b表示指定保留"nutlet:var schematic"数据
data modify storage nutlet:var schematic set value {tick:100, transformation:{scale:[1f, 1f, 1f], translation:[-0.5f, -0.5f, -0.5f]}, id:"minecraft:piston", prop:{facing:"up"}, keepData:1b}
# 指定"hasProp"函数宏参数为"true"，表示应用"prop"到方块展示实体"block_state.Properties"标签
function nutlet:-m/schematic/block {hasProp:"true"}
# 因为"keepData:1b"保留了"nutlet:var schematic"数据，只更改"schematic.prop.facibng"来更改活塞朝向
data modify storage nutlet:var schematic.prop.facibng set value "down"
execute positioned ~ ~1 ~ run function nutlet:-m/schematic/block {hasProp:"true"}
# 如果使用"keepData:1b"指定保留"nutlet:var schematic"数据，则需要调用者手动清除。
data remove storage nutlet:var schematic
```
会在执行位置summon两个活塞，一个朝上一个朝下，形成两面夹击之势。
## nutlet:-m/schematic/item
与`nutlet:-m/schematic/block`相同，但summon的是物品展示实体，并会将展示实体的`Rotation`修改为执行旋转角度。
```mcfunction
# 使用"component"指定物品组件，会被应用到物品展示实体的"item.component"标签
data modify storage nutlet:var schematic set value {tick:100, transformation:{scale:[1f, 1f, 1f], translation:[-0.5f, -0.5f, -0.5f]}, id:"minecraft:diamond_axe", component:{enchantments:{"minecraft:unbreaking":3}}}
# 指定"hasComponent"函数宏参数为true，表示应用"component"到方块展示实体"item.component"标签
# 使用"rotated ~90 ~"将执行旋转角度旋转到正右方
execute rotated ~90 ~ run run function nutlet:-m/schematic/block {hasComponent:"true"}
```
summon的物品展示实体会朝向右方。
## nutlet:-m/schematic/text
与`nutlet:-m/schematic/item`相同，但summon的是文本展示实体。
```mcfunction
# "mergeData"将会使用"data merge entity @s $(mergeData)"合并到文本展示实体的根标签。
# 使用"text"指定文本组件，会被应用到文本展示实体的"text"标签。"text"格式遵循＜25w04a(1.21.5快照)版本的格式，为原始JSON字符串(Raw JSON String),25w04a及以上会用函数宏转为NBT compound。这是为了调用者能够一套代码兼容1.21.x所有版本。将会在26.x更改为新格式。但是你也可以用mergeData自行判断。
data modify storage nutlet:var schematic set value {tick:100, mergeData:{background:-1610612736, shadow:1b, width:3f, height:1f, line_width:250}, text:'{"text":"123","color":"aqua"}'}
# 使用"facing ^ ^ ^-1"将执行旋转角度旋转到正后方
execute facing ^ ^ ^-1 run function nutlet:-m/schematic/text
```
summon的文本展示实体会朝向后方。你需要后退几步，可能还要破坏地板，就能看见它了。
