def triangle(a, b, c)
  return :equilateral if a == b && a == c && b == c && a != 0
  same_side = [a, b, c].find_all do |side|
    side == a && side == b || side == c && side == b || side == a && side == c
  end
  array_of_conditions = [(a + b) > c, (b + c) > a, (a + c) > b]
  miss = false if array_of_conditions.include?(false)
  return :isosceles if same_side.length == 2 && ( miss || miss == nil)
  return :scalene if a != b && b != c && a != c && a > 0 && b > 0 && c > 0
  if a.zero? && b.zero? && c.zero?
    raise StandardError, 'Side must have any length '
  end
  if a < 0 || b < 0 || c < 0
    raise StandardError, 'Side length must be positive '
  end
  raise StandardError, 'Sum of two sides more then third ' if !miss
end
puts triangle(1,1,3)
