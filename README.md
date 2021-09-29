# list2
Combined implementation of stacks, queues, and double queues. Full privacy guaranteed - list methods and member variables are protected from modification. 

## How to use
In a Lua file, simply add this line to include the library: 

    local list2 = require "list2"


(In a Lua interpreter, you'd omit the `local`, as local variables do not persist between lines.) 

If you want `list2` to simulate common data structures, you have to limit your usage of functions. Examples: 
- **Stack**: only use `pushLeft` and `popLeft`, or `pushRight` and `popRight`. 
- **Queue**: only use `pushLeft` and `popRight`, or `pushRight` and `popLeft`. 
- **Double queue**: you may use any of the four functions. 

## Why use this?

According to [Programming in Lua: First Edition](https://lua.org/pil/11.4.html), all operations are guaranteed to run in constant time, because they do not shift elements. Instead, the `list2` keeps track of the left and right ends and moves them as necessary. 
