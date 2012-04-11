local args = {...}
width = args[1]
widthType = ""
length = args[2]
length = length - 1
height = args[3]
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
function evenOdd(val)
	if val % 2 == 0 then
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

--Axis Function
function xAxis()
	--Forward
		--evenOdd()
	for i=1,width,1 do
		for j=1,length,1 do
			count = count + 1
			dig()
			turnF()
		end
		areaCounter()
		if turn == true then
			if dir == "right" then
				goRight() -- Dir = left
			elseif dir == "left" then
				goLeft() -- Dir = Right
			end
		end
	end
	evenOdd(width)
	dir = "right"
	--
	--
	--Return to start
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
end

function yAxis()
	for h=1,height,1 do
		turtle.digDown()
		turtle.down()
		xAxis()
	end
	for n=1,height,1 do
		turtle.up()
	end
end
--Main Start
yAxis()