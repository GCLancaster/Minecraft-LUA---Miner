local args = {...}
--[[if args[1] ~= "f" and args[1] ~= "b" and args[1] ~= "r" and args[1] ~= "l" and args[1] ~= "u" and args[1] ~= "d" then
	error("Usage: move <direction> <distance>")
end]]
function forward(number)
	for i=1,number,1 do
		turtle.forward()
	end
end
function backward(number)
	for i=1,number,1 do
		turtle.back()
	end
end
function leftward(number)
	for i=1,1,1 do
		turtle.turnLeft()
	end
	for i=1,number,1 do
		turtle.forward()
	end
end
function rightward(number)
	for i=1,1,1 do
		turtle.turnRight()
	end
	for i=1,number,1 do
		turtle.forward()
	end
end
function upward(number)
	for i=1,number,1 do
		turtle.up()
	end
end
function downward(number)
	for i=1,number,1 do
		turtle.down()
	end
end
odd = true
for i=1,#args,1 do
first = args[i]
second = args[i+1]
	if odd == true then
		if first == "f" then
			forward(second)
		elseif first == "b" then
			backward(second)
		elseif first == "l" then
			leftward(second)
		elseif first == "r" then
			rightward(second)
		elseif first == "u" then
			upward(second)
		elseif first == "d" then
			downward(second)
		end
		odd = false
	else
	odd = true
	end
end
--[[
if args[1] == "f" then
	for i=1,args[2],1 do
		turtle.forward()
	end
elseif args[1] == "b" then
	for i=1,args[2],1 do
		turtle.back()
	end
elseif args[1] == "r" then
	for i=1,1,1 do
		turtle.turnRight()
	end
	for j=1,args[2],1 do
		turtle.forward()
	end
elseif args[1] == "l" then
	for i=1,1,1 do
		turtle.turnLeft()
	end	
	for j=1,args[2],1 do
		turtle.forward()
	end
elseif args[1] == "u" then
	for i=1,args[2],1 do
		turtle.up()
	end
elseif args[1] == "d" then
	for i=1,args[2],1 do
		turtle.down()
	end
end
]]