# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  return :equilateral if a == b && a == c && b==c && a != 0
  same_side = [a,b,c].find_all do |side|
  side==a&&side==b||side==c&&side==b||side==a&&side==c
  end
  return :isosceles if same_side.length == 2 && ((a+b)>c&&(b+c)>a&&(a+c)>b)
  return :scalene if a != b && b != c && a != c && a > 0 && b > 0 && c > 0
  raise TriangleError,"Side must have any length " if a==0&&b==0&&c==0
  raise TriangleError,"Side length must be positive " if a<0||b<0||c<0
  raise TriangleError,"Sum of two sides more then third " if (a+b)>c||(b+c)>a||(a+c)>b
  

 end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
