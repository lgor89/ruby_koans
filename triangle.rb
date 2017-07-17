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
  array_of_conditional = [(a+b)<=c,(b+c)<=a,(a+c)<=b]
  sides = [a,b,c]
  if array_of_conditional.include?(true)
    raise TriangleError, 'Sum of two sides more then third ' if sides.each{|s| true if s>0}
    raise TriangleError, 'Side must have any length ' if sides.include?(0)
    raise TriangleError, 'Side length must be positive ' if sides.each{|s| true if s<0}
  else
    return :scalene if sides.uniq.length == 3
    return :isosceles if sides.uniq.length == 2
    return :equilateral if sides.uniq.length == 1

  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
