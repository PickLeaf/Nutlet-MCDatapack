# 配置: 是否在进入世界时打印Nutlet数据包版本信息
# 接受的值: 
# acceptable vales: 
# [1b, 0b]
data modify storage nutlet:config list append value \
    {description:"Whether to print version info of Nutlet when login the world. Acceptable Vales: [1b, 0b]",\
    name:"Nutlet:Print Version",  storage_path:"nutlet:config showVersion", default:"1b", type:"storage"}
# 配置: 是否所有人都有权限修改配置
# 接受的值: 
# acceptable vales: 
# [1b, 0b]
data modify storage nutlet:config list append value \
    {description:"Whether everyone has permission to modify the configuration. Acceptable Vales: [1b, 0b]",\
    name:"Nutlet:Config Modify Lock",  storage_path:"nutlet:config modifyLock", default:"1b", type:"storage"}