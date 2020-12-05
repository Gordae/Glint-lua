require=os

local version = 2.0

function Glint()
	while( true )
	do
		io.write('>>>')
		local command = io.read()

		if (command == 'about') then
			print('Version: ' .. version)
			print('Rewritten In ' .. _VERSION)
		end

		if (command == 'help') then
			print('about - About Glint')
			print('calc - Calculator')
			print('help - This Menu')
		end

		if (command == 'calc') then
			io.write('Value A: ')
			local valueA = io.read()
			io.write('+ or -: ')
			local mathchoose = io.read()
			io.write('Value B: ')
			local valueB = io.read()
			if (mathchoose == '+') then
				answer = (valueA + valueB)
				print('The Answer Is... ' .. answer .. '!')
			end
			if (mathchoose == '-') then
				answer = (valueA - valueB)
				print('The Answer Is... ' .. answer .. '!')
			end
	end
end
end
function startup()
	local start = os.clock()
	while os.clock() - start < 1 do end
	print('Glint ' .. version)
	print('Type "help" for a list of commands.')
	Glint()
end
startup()
