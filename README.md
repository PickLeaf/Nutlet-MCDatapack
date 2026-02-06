可供调用的函数都在命名空间 `Nutlet:-m` 下。<br>
# 用例
## Nutlet:-m/hex_uuid
执行以下命令：
```mcfunction
data modify storage nutlet:args uuid set from entity @n[type=minecraft:pig] UUID
function nutlet:-m/hex_uuid
```
会在 `storage nutlet:args uuid.hex` 返回出 `@n[type=minecraft:pig]` 的UUID，使用有连字符的十六进制表示方式，这个字符串可以用来当作[目标选择器](https://zh.minecraft.wiki/w/%E7%9B%AE%E6%A0%87%E9%80%89%E6%8B%A9%E5%99%A8)选中实体。<br>
然后编写以下函数文件：
test:test.mcfunction
```mcfunction
tp $(hex) ~ 255 ~
```
并使用以下命令调用，可以将那头倒霉的猪传送到高空。
```mcfunction
function test:test with storage nutlet:args uuid
```
## Nutlet:-m/schedule
先编写以下函数文件：
test:test.mcfunction
```mcfunction
tellraw @a {"storage": "nutlet:var","nbt": "data.msg"}
```
然后执行以下命令：
```mcfunction
data modify storage nutlet:var args append value {tick:50,task:{handler:"test:test",data:{msg:"ooooooooh!"}}}
function nutlet:-m/schedule
```
会在50游戏刻(也就是2.5秒)后执行函数：`nutlet:test` ，`data`将在函数执行时放置在`nutlet:var data`供函数使用。你将在聊天框看到"ooooooooh!"。
