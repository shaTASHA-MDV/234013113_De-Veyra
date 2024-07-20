
print("Select a shape: circle, triangle, or quadrilateral")

selected_shape = input("Enter the name of the shape: ")


if selected_shape.lower() == "circle":
    
    radius = float(input("Enter the radius of the circle: "))
    
    area = 3.14159 * (radius ** 2)
    print("The area of the circle is:", area)

elif selected_shape.lower() == "triangle":
    
    side1 = float(input("Enter the length of side 1: "))
    side2 = float(input("Enter the length of side 2: "))
    side3 = float(input("Enter the length of side 3: "))
    
    s = (side1 + side2 + side3) / 2
    area = (s * (s - side1) * (s - side2) * (s - side3)) ** 0.5
    print("The area of the triangle is:", area)
    
    if side1 == side2 == side3:
        print("The triangle is an equilateral triangle.")
    elif side1 == side2 or side1 == side3 or side2 == side3:
        print("The triangle is an isosceles triangle.")
    else:
        print("The triangle is a scalene triangle.")

elif selected_shape.lower() == "quadrilateral":
    
    length = float(input("Enter the length of the quadrilateral: "))
    width = float(input("Enter the width of the quadrilateral: "))
    
    area = length * width
    print("The area of the quadrilateral is:", area)
    
    if length == width:
        print("The quadrilateral is a square.")
    else:
        print("The quadrilateral is a rectangle.")

else:
    print("Invalid shape selection. Please select either circle, triangle, or quadrilateral.")
