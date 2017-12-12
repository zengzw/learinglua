print('-----函数-------')
function max(num1,num2)
 if(num1 > num2) then 
    result = "num1 > num2"
 else
   result = "num1 < num2"

  return result
 end
end

print(max(1,2))


print('----函数的传递----------')
myprint = function(param)
  print('这个是打印函数:'..param)
end

function add(num1,num2,fn)
 result = num1 + num2
 fn(result)
end

myprint('hell')
add(1,2,myprint)

print('--------函数多个返回值--------')
--开始和结束的下标
s,b = string.find('www.baidu.com','baidu')
print(s,b)

print('-----可变参数-------')
function change(...)
result = 0
local arg = {...}
for i,v in ipairs(arg) 
 do
  result = result +1
end
return result
end

print('参数的长度：',change(1,2,3,4,5))
