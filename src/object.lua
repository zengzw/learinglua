-- 面向对象

local Objects = {length,width,area}
  
  function Objects: new(len,wid)
    local o = {
      length = len or 0,
      width = wid or 0,
      area = len * wid
    }
    
     setmetatable(o,{__index = self})
     return o
  end
  
  function Objects:getInfo()
    return self.length,self.width,self.area
  end


a = Objects:new(10,20)
print(a:getInfo())


