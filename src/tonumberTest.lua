-- tonumber 类型转换

local num = tonumber("10");
print(num);


local num = tonumber("10");    -- 返回十进制数10
local num = tonumber("AF",16); -- 返回十六进制数175 
local num = tonumber("0xA");   -- 返回10
local num = tonumber("56.9");  -- 返回56.9
local num = tonumber("0102");  -- 返回102
local num = tonumber("123456red");     -- 返回nil
local num = tonumber("red");           -- 返回nil
local num = tonumber("true");          -- 返回nil
local num = tonumber({x  =10, y = 20});-- 返回nil