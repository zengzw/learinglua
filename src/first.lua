print('hello')


print('hello lua')

num = 1024
num1 = 3.0

-- 局部变量
local localv = 20

print('-----------while 循环--------------')
-- 循环
sum = 0
i = 1
while (i <= num)
 do
        sum = sum + num
        i = i + 1

end

print('result:' .. sum)

print('-----------if 语句---------------------')
-- if 语句
if num > 1024 and num < 10000 then
        print('num > 1024')
elseif num == 1024 then
        print('num == 1024')
elseif(num ~= 1024) then
        print('num != 1024')
else
        print('i dont know')
end;

print('-----for循环---------')
--for循环
s = 0
for i = 1,100 do
  s = s + i
--  print(i ..'s:'..s)
end
