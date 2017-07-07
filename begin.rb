class Dog
	def test
		puts 'a'
		self
	end

	def test2
		puts 'b'
	end
end

d = Dog.new
puts d
puts d.test
puts d.test.test2
puts d.test2.test
puts d.test2
p Dog