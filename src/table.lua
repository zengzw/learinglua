

--[[
注意：
当我们获取 table 的长度的时候无论是使用 # 还是 table.getn 其都会在索引中断的地方停止计数，而导致无法正确取得 table 的长度。
可以使用以下方法来代替：
function table_leng(t)
  local leng=0
  for k, v in pairs(t) do
    leng=leng+1
  end
  return leng;
end
--]]


mytable = {}
mytable[1] = "hello"
mytable['hello'] = 1

print(mytable[1])
print(mytable['hello'])

-- 将原来的table 赋值给 另外 table，修改其中一个table的值，将会影响原来的table的值
othertable = mytable;
othertable['hello'] = 2;

print(mytable['hello'])


-- table.concat (table [, sep [, start [, end]]]):
--[[ table concat 
concat是concatenate(连锁, 连接)的缩写. table.concat()函数列出参数中指定table的数组部分从start位置到end位置的所有元素, 元素间以指定的分隔符(sep)隔开。
--]]  
fruits = {"banana","apple","pear","watermalon"}
print(table.concat(fruits))

-- 已都好分割
print(table.concat(fruits,","))

--列出指定位置的value
print(table.concat(fruits," ",1,2))



-- insert 默认是往最末尾追加，也可以制定位置 table.insert (table, [pos,] value):
table.insert(fruits,"insert")
print(table.concat(fruits))

table.insert(fruits,2,"replace-value")
print(table.concat(fruits,","))

--remove 默认从最后一个元素开始删除，也可以指定位置
print('--------remove---------')
table.remove(fruits)
print(table.concat(fruits,","))

table.remove(fruits,2)
print(table.concat(fruits,","))



-- table sort 排序
table.sort(fruits)
print(table.concat(fruits,","))


digit = {2,34,409,232}
maxnum = table.maxn(digit)
print(maxnum)



