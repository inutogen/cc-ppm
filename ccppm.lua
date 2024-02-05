local args = {...}
if args[1] == "from-ppm"
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
		if line == "" then
			done = true
		else
			tab = textutils.unserialise(line)
			newTab = {}
			icount = 0
			for i=1,#tab,3 do
				icount = icount + 1
				table.insert(newTab, icount, {tab[i], tab[i+1], tab[i+2]})
			end
			table.insert(mainTab, maini, newTab)
		end
  until done == true
	for i,v in ipairs(mainTab) do
		for i1,v1 in ipairs(v) do
			for i2,v2 in ipairs(v1) do
				print(textutils.serialise(v2))
			end
		end
	end
end
