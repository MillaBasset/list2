return function()
    local self = {first = 0, last = -1}

    local function pushLeft(value)
        self.first = self.first - 1
        self[self.first] = value
    end

    local function pushRight(value)
        self.last = self.last + 1
        self[self.last] = value
    end

    local function popLeft()
        if self.first > self.last then return nil end
        local value = self[self.first]
        self[self.first] = nil
        self.first = self.first + 1
        return value
    end

    local function popRight()
        if self.first > self.last then return nil end
        local value = self[self.last]
        self[self.last] = nil
        self.last = self.last - 1
        return value
    end

    local proxy = {
        pushLeft = pushLeft,
        pushRight = pushRight,
        popLeft = popLeft,
        popRight = popRight
    }

    return setmetatable({}, {
        __index = proxy,
        __newindex = function()
            error("attempt to modify a list object", 2)
        end,
        __metatable = "protected"
    })
end
