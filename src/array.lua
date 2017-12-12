
--[[ pairs 和 ipairs异同
同：都是能遍历集合（表、数组）
异：ipairs 仅仅遍历值，按照索引升序遍历，索引中断停止遍历。即不能返回 nil,只能返回数字 0，如果遇到 nil 则退出。它只能遍历到集合中出现的第一个不是整数的 key。
pairs 能遍历集合的所有元素。即 pairs 可以遍历集合中所有的 key，并且除了迭代器本身以及遍历表本身还可以返回 nil。--]]


ar  = {"1e","w2","c3"}
for i,v in ipairs(ar) do
   print(i,v)
end 


-- 二维素组
ar1 = {"le","ce",{"ab","ac"}}
for i,v in ipairs(ar1) do 
  --得到当前value的类型
  artype = type(v)

  if(artype == "string") then
     print('string',v)

  elseif(artype == "table") then

   for k,v in ipairs(v) do
    print('/t table:',v)
   end

  end  

end


--  定义二维数组

local tabFiles = {
        [1] = "test2",
        [6] = "test3",
        [4] = "test1"
    }

for k, v in ipairs(tabFiles) do    --输出"test2",在key等于2处断开
    print(k, v)
end