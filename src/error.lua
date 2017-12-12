
-- ssert首先检查第一个参数，若没问题，assert不做任何事情；否则，assert以第二个参数作为错误信息抛出。
local function add(a,b)
  assert(type(a) == "number","a不是数字")
  assert(type(b) == "number","b不是数字")
end

add(1,2)




--[[
function myfac()
  n = n / nil
end

function error(err)
  print('--error:',err)
end

status = xpcall(myfac,error)
print(status)
--]]