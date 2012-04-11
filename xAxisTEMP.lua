local args = {...}
width = args[1]
widthType = "even"
length = args[2]
length = length - 1
area = width*length
count = 0
turn = true
dir = "right"

--FUNCTIONS START
--Basics
function turnR()
	turtle.turnRight()
end
function turnL()
	turtle.turnLeft()
end
function turnF()
	turtle.forward()
end
function turnB()
	turtle.back()
end
function dig()
	turtle.dig()
end
--Advanced
function goRight()
	turnR()
	dig()
	turnF()
	turnR()
	dir = "left"
end
function goLeft()
	turnL()
	dig()
	turnF()
	turnL()
	dir = "right"
end
--Even/Odd Finder
function evenOdd()
	if width % 2 == 0 then
		widthType = "even"
	else
		widthType = "odd"
	end
end
--Counter
function areaCounter()
	if count == area then
		turn = false
	else
		turn = true
	end
end

--MAIN START
evenOdd()
for i=1,width,1 do
	for j=1,length,1 do
		count = count + 1
		dig()
		turnF()
	end
	areaCounter()
	if turn == true then
		if dir == "right" then
			goRight()
		elseif dir == "left" then
			goLeft()
		end
	end
end
--
--
--
if widthType == "even" then
	turnR()
	for o=1,width-1,1 do
		turnF()
	end
	turnR()
else
	turnR()
	turnR()
	for k=1,length,1 do
		turnF()
	end
	turnR()
	for l=1,width-1,1 do
		turnF()
	end
	turnR()
end