str = "Deadline is 12/03/2019,firm"

findResult = string.find(str,'%d')
print("%d:",findResult)

findResult = string.find(str,'%l')
print("%l:",findResult)

findResult = string.find(str,'%s')
print("%s",findResult)


-- 模糊匹配
print('-------gmatch------------')
for work in string.gmatch(str,'%d+')do
print(work)
end
