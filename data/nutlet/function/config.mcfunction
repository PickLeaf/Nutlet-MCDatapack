# 配置: 是否在进入世界时打印数据包版本信息
# Config: Whether to print version info of datapack when login the world
# 接受的值: 
# acceptable vales: 
# [1b, 0b]
data modify storage nutlet:config list append value \
    {description:"Whether to print version info of Nutlet when login the world",\
    name:"Nutlet:Print Version",  storage_path:"nutlet:config showVersion", default:"1b", type:"storage"}