-- initialize program variables
local list2 = require "list2"
local x = list2()

-- push numbers into either end randomly
for i = 1, 100 do
    if math.random() < 0.5 then
        x.pushLeft(i)
    else
        x.pushRight(i)
    end
end

-- pop all numbers from the right and print them
while true do
    local e = x.popRight()
    if not e then break end
    print(e)
end
