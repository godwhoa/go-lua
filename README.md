Go-Lua binding.
===============

Idea: being able to call Go's ssh lib. from lua.<br>
Status: Right it can't do much just calls a `Sum` function.

```
# creates the header file and .so
$ go build -buildmode=c-shared -o main.so main.go

# You'll have to edit header file see note.

# Run it with luajit
$ luajit hello_ffi.lua
4LL
```

#### Note: 
Header file it generates won't work out of the box with lua-ffi.<br>

#### Changes for header file:
* remove all ifdefs
* replace `__SIZE_TYPE__` with `size_t`
