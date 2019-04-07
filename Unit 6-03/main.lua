-----------------------------------------------------------------------------------------
--
-- Created by: Aden Rao
-- Created on: April 7, 2019
--
-- This program lets the user enter age and based on that it tells them what movies they can see.
--
-----------------------------------------------------------------------------------------

-- Hides status bar
--------------
display.setStatusBar(display.HiddenStatusBar) 
--------------

-- Background color and title text
---------------
display.setDefault( "background",  0/255, 255/255, 150/255 )

responseText = display.newText( "  What Movies Can You See? ", display.contentCenterX - 3, 160, native.systemFont, 25 )
responseText:setFillColor( 0 )
------------

-- Text telling user to enter their age.
-----------
display.newText ( "Enter Your Age Here: ", display.contentCenterX, 380, native.systemFont, 30 )
----------

-- Movie image and text field
-----------
local image = display.newImageRect( "assets/movie.png", 150, 150 )
image.x = 160
image.y = 43

ageField = native.newTextField( display.contentCenterX, display.contentCenterY + 200, 225, 40 )
ageField.id = "Age textField"
-----------

-- Calculate button
------------
local calculateButton = display.newImageRect( "assets/enterbutton.png", 175, 175 )
calculateButton.x = display.contentCenterX
calculateButton.y = display.contentCenterY + 33
calculateButton.id = "calculate button"
------------

-- Calculater button touch event
local function calculateButtonTouch( event )

-- If statement to determine what movies the user can see based on their age.
local ageField = tonumber(ageField.text)

if ageField >= 17 then
 
    responseText.text = "     You can see R \n rated movies alone"

else if ageField >= 13 then
	responseText.text = "   You can see PG \n 13 movies alone"

else
	responseText.text = "     You can see G \n rated movies alone"
end

end

end

calculateButton:addEventListener( "touch", calculateButtonTouch )
