-- ************简单模式*************
-- 以只读方式打开文件
file = io.open("src/file.txt","r")
-- 设置默认输入文件为 file.txt
io.input(file);
-- 输出文件第一行

--[[
模式  描述
"*n"  读取一个数字并返回它。例：file.read("*n")
"*a"  从当前位置读取整个文件。例：file.read("*a")
"*l"（默认）  读取下一行，在文件尾 (EOF) 处返回 nil。例：file.read("*l")
number  返回一个指定字符个数的字符串，或在 EOF 时返回 nil。例：file.read(5)--]]

print(io.read("*a"))


--关闭流
io.close(file)

-- *********** 写操作 *************
file = io.open("src/file.txt","a")
io.output(file)
io.write("-----test lua input")
io.close(file)



-- ************完全模式*************

file = io.open("src/file.txt","r")

print(file:read())
file:close();

-- 写
file = io.open("src/file.txt","a")
file:write("---write")
file:close();

print('-----------seek----------------')



--[[ 
file:seek(optional whence, optional offset): 设置和获取当前文件位置,成功则返回最终的文件位置(按字节),失败则返回nil加错误信息。参数 whence 值可以是:
"set": 从文件头开始
"cur": 从当前位置开始[默认]
"end": 从文件尾开始
offset:默认为0
--]]
-- 以只读方式打开文件
file = io.open("src/file.txt","r")

file:seek("end",-25)
print(file:read("*a"))

-- 关闭打开的文件
file:close()


-- 打开指定的文件filename为读模式并返回一个迭代函数,每次调用将获得文件中的一行内容,当到文件尾时，将返回nil,并自动关闭文件。

print('---------------line---------------')
for line in io.lines("src/file.txt")do
print(line)
end