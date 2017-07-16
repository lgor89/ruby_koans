def triangle(a, b, c)
  if ![a,b,c].include?(0)
    array_of_conditions = [(a + b) > c, (b + c) > a, (a + c) > b]
    miss = false if array_of_conditions.include?(false)
    same_side = [a, b, c].find_all do |side|
      side == a && side == b || side == c && side == b || side == a && side == c
    end
    return :isosceles if same_side.length == 2 && ( miss || miss == nil)

   return :equilateral if [a,b,c].eql?([b,c,a])
  end
    if [a,b,c].include?(0)
    raise TriangleError, 'Side must have any length '
    end
  if a < 0 || b < 0 || c < 0
    raise TriangleError, 'Side length must be positive '
  elsif miss
    return :scalene if  ![a,b,c].eql?([b,c,a]) && ![a,b,c].include?(0)
  end
   raise TriangleError, 'Sum of two sides more then third ' if !miss
end
class TriangleError < StandardError
end
     triangle(2, 4, 2)

