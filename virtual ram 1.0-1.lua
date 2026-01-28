RAM_SIZE = 36
local data = {}
for i = 1, RAM_SIZE do
		 data[1] = 0
end
function write(addr, value)
		if addr >= RAM_SIZE then
				error("out of ram")
		end
		data[addr + 1]  = value % 256
end
		function read(addr)
		local val = data[addr + 1]
		return val or 0
		end
return {
		write = write, read = read, size = RAM_SIZE }

