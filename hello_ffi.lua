local io = require('io')
local ffi = require('ffi')

ffi.cdef( io.open('main.h'):read('*all') )

local ssh = ffi.load('./main.so')

print(ssh.Sum(1,3))