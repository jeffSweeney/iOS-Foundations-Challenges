# LazyStack Challenge

This challenge is very simple but demonstrates the value of using a LazyStack vs a regular Stack. For this challenge,
I used the LazyVStack and generated a ScrollView that would far exceed the length of the screen. As a result, the
LazyVStack will wait to allocate memory for the content until it's ready to be rendered. Had I done this with a normal
VStack, all resources would be allocated on launch.

## Challenge

Build a UI that uses a LazyVStack and ScrollView to display a number of rectangles. 

Use the index of the rectangle to affect its size, color, or both! 
