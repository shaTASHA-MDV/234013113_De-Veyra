@echo off

:menu
echo Select a shape:
echo 1. Circle
echo 2. Triangle
echo 3. Quadrilateral
choice /c 123 /m "Choose an option:"

if errorlevel 3 goto quadrilateral
if errorlevel 2 goto triangle
if errorlevel 1 goto circle

:circle
set /p radius=Enter the radius of the circle:
set /a area=3.14159*radius*radius
echo The area of the circle is %area%
goto end

:triangle
set /p a=Enter the length of the first side:
set /p b=Enter the length of the second side:
set /p c=Enter the length of the third side:

rem Using Heron's formula
set /a s=(a+b+c)/2
set /a area=s*(s-a)*(s-b)*(s-c)
set /a area=sqrt(area)
echo The area of the triangle is %area%

rem Determine the type of triangle
if %a%==%b% if %b%==%c% (
    echo The triangle is equilateral.
) else if %a%==%b% if %a% neq %c% (
    echo The triangle is isosceles.
) else (
    echo The triangle is scalene.
)

:quadrilateral
set /p length=Enter the length:
set /p width=Enter the width:
set /a area=length*width
echo The area of the quadrilateral is %area%

if %length%==%width% (
    echo The quadrilateral is a square.
) else (
    echo The quadrilateral is a rectangle.
)
