local args = {...}
if args[1] == "from-ppm" then
  local ppm = fs.open(args[2], "r")
  for i=1,3 do
    ppm.readLine()
  end
	local done = false
	local mainTab = {}
	local maini = 0
	repeat
		maini = maini + 1
		line = ppm.readLine()
		if line == nil then
			done = true
		else
			local tab = {}
   			for word in line:gmatch("%w+") do table.insert(tab, word) end
   			print(tab, line)
			local newTab = {}
			local icount = 0
			for i=1,#tab,3 do
				icount = icount + 1
				table.insert(newTab, icount, {tab[i], tab[i+1], tab[i+2]})
			end
			table.insert(mainTab, maini, newTab)
		end
  	until done == true
	for i,v in ipairs(mainTab) do
		for i1,v1 in ipairs(v) do
			local prgb = vector.new(v1[1], v1[2], v1[3])
			local test = vector.new(130, 130, 130)
			local distance = (prgb-test):length()
			print(distance)
		end
	end
end
