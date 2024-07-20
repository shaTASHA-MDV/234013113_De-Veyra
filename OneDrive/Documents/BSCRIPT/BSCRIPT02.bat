@echo off
setlocal enabledelayedexpansion

echo Choose a shape:
echo 1. Circle
echo 2. Triangle
echo 3. Quadrilateral
set /p shape="Enter your choice (1-3): "

if "%shape%"=="1" (
    set /p radius="Enter the radius of the circle: "
    set /a area=314*radius*radius/100
    echo The area of the circle is: !area!
) else if "%shape%"=="2" (
    set /p side1="Enter the length of the first side: "
    set /p side2="Enter the length of the second side: "
    set /p side3="Enter the length of the third side: "
    
    set /a s=(side1+side2+side3)/2
    set /a area=s*(s-side1)*(s-side2)*(s-side3)
    set /a area=sqrt(area)
    
    if %side1%==%side2% if %side2%==%side3% (
        echo The triangle is equilateral.
    ) else if %side1%==%side2% if not %side2%==%side3% (
        echo The triangle is isosceles.
    ) else (
        echo The triangle is scalene.
    )
    echo The area of the triangle is: !area!
) else if "%shape%"=="3" (
    set /p length="Enter the length of the quadrilateral: "
    set /p width="Enter the width of the quadrilateral: "
    set /a area=length*width
    echo The area of the quadrilateral is: !area!
    
    if %length%==%width% (
        echo The quadrilateral is a square.
    ) else (
        echo The quadrilateral is a rectangle.
    )
) else (
    echo Invalid choice.
)

pause
endlocal
exit
