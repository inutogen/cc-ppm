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
			local test = vector.new(240, 240, 240)
			local distance = (prgb-test):length()
			local greatest = distance
			local greatname = "0"
			
			local test = vector.new(242, 178, 51)
			local distance = (prgb-test):length()
			if distance < greatest then
				greatest = distance
				greatname = "1"
			end

			local test = vector.new(229, 127, 216)
			local distance = (prgb-test):length()
			if distance < greatest then
				greatest = distance
				greatname = "2"
			end

			local test = vector.new(153, 178, 242)
			local distance = (prgb-test):length()
			if distance < greatest then
				greatest = distance
				greatname = "3"
			end

			local test = vector.new(222, 222, 108)
			local distance = (prgb-test):length()
			if distance < greatest then
				greatest = distance
				greatname = "4"
			end

			local test = vector.new(127, 204, 25)
			local distance = (prgb-test):length()
			if distance < greatest then
				greatest = distance
				greatname = "5"
			end

			local test = vector.new(242, 178, 204)
			local distance = (prgb-test):length()
			if distance < greatest then
				greatest = distance
				greatname = "6"
			end

			local test = vector.new(76, 76, 76)
			local distance = (prgb-test):length()
			if distance < greatest then
				greatest = distance
				greatname = "7"
			end

			local test = vector.new(153, 153, 153)
			local distance = (prgb-test):length()
			if distance < greatest then
				greatest = distance
				greatname = "8"
			end

			local test = vector.new(78, 153, 178)
			local distance = (prgb-test):length()
			if distance < greatest then
				greatest = distance
				greatname = "9"
			end

			local test = vector.new(178, 102, 229)
			local distance = (prgb-test):length()
			if distance < greatest then
				greatest = distance
				greatname = "a"
			end

			local test = vector.new(51, 102, 204)
			local distance = (prgb-test):length()
			if distance < greatest then
				greatest = distance
				greatname = "b"
			end

			local test = vector.new(127, 102, 76)
			local distance = (prgb-test):length()
			if distance < greatest then
				greatest = distance
				greatname = "c"
			end

			local test = vector.new(87, 166, 78)
			local distance = (prgb-test):length()
			if distance < greatest then
				greatest = distance
				greatname = "d"
			end

			local test = vector.new(204, 76, 76)
			local distance = (prgb-test):length()
			if distance < greatest then
				greatest = distance
				greatname = "e"
			end

			local test = vector.new(14, 14, 14)
			local distance = (prgb-test):length()
			if distance < greatest then
				greatest = distance
				greatname = "f"
			end
			print(greatest, greatname)
		end
	end
end
