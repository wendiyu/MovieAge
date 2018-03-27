-----------------------------------------------------------------------------------------
--
-- main.lua
-- Created by: Wendi Yu
-- Created on: Mar 2018
-- 
-- price get from movie
-----------------------------------------------------------------------------------------

local answer = display.newText( "", 1000, 1150, native.systemFont, 100 )

local instruction = display.newText(" What day is it?  ", display.contentCenterX - 400, display.contentCenterY - 500, native.systemFont, 100)
local instructionTextField = native.newTextField( display.contentCenterX - 400 , display.contentCenterY - 300 , 650, 120)
instructionTextField.id = "day"

local instruction2 = display.newText(" Enter your age: ", display.contentCenterX - 400, display.contentCenterY - 100, native.systemFont, 100)
local instruction2TextField = native.newTextField( display.contentCenterX - 400, display.contentCenterY + 100, 650, 120)
instruction2TextField.id = "age"

local enterButton = display.newImageRect("./assets/sprites/enterButton.png", 500, 157 )
enterButton.x = display.contentCenterX + 600
enterButton.y = display.contentCenterY + 100
enterButton.id = "enter button"

local function PriceOfMovie( event )
	-- body
	local day = instructionTextField.text
	local age = tonumber(instruction2TextField.text)

	if (day == "Tuesday" or day == "Thursday") or (age > 12 and age < 21) then
		 answer.text = ("You can get a student price.")
	else 
		answer.text = ("You can get a regular price.")
	end

end

enterButton:addEventListener("touch", PriceOfMovie)