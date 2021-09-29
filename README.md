# list2
Combined implementation of stacks, queues, and double queues. Full privacy guaranteed - list methods and member variables are protected from modification. 

## How to use
In a Lua file, simply add this line to include the library (assuming Lua can find it in its search path): 

    local list2 = require "list2"

(In a Lua interpreter, you'd omit the `local`, as local variables do not persist between lines.) 

Then, create a `list2` by calling the loaded library:

    local x = list2()

**Method documentation**:
- Methods `pushLeft` and `pushRight` push an element to the left and right end respectively. 
- Methods `popLeft` and `popRight` pop an element from the left or right end respectively, or return `nil` if the `list2` is empty. 

If you want `list2` to simulate common data structures, you have to limit your usage of functions. Examples: 
- **Stack**: only use `pushLeft` and `popLeft`, or `pushRight` and `popRight`. 
- **Queue**: only use `pushLeft` and `popRight`, or `pushRight` and `popLeft`. 
- **Double queue**: you may use any of the four functions. 

## Example program

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

## Why use this?

According to [Programming in Lua: First Edition](https://lua.org/pil/11.4.html), all operations are guaranteed to run in constant time, because they do not shift elements. Instead, the `list2` keeps track of the left and right ends and moves them as necessary. 
