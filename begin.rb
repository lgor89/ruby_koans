def triangle(a, b, c)
  array_of_conditional = [(a+b)<=c,(b+c)<=a,(a+c)<=b]
  sides = [a,b,c]
  if array_of_conditional.include?(true)
    raise TriangleError, 'Sum of two sides more then third ' if sides.each{|s| true if s>0}
    raise TriangleError, 'Side must have any length ' if sides.include?(0)
    raise TriangleError, 'Side length must be positive '
  else
    return :scalene if sides.uniq.length == 3
    return :isosceles if sides.uniq.length == 2
    return :equilateral if sides.uniq.length == 1

  end
end
class TriangleError < StandardError
end

