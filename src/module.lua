
-- 模块
module = {}

module.constants = "常量"

function module.func()
 io.write('这是一个函数')
 end
 
 local function func2()
  print('这是一个私有函数')
 end
 
 return module
