def three_times
  1.upto(3) { |count| yield(count) }
end

three_times { puts "Ho!"}

three_times do |number|
  puts "#{number} situp"
  puts "#{number} pushup"
  puts "#{number} chinup"
end

def n_times(number)
	1.upto(number) do |n|
		yield(n)
	end
end



n_times(5) do |n|
	puts "#{n} situps"
	puts "#{n} pushups"
	puts "#{n} chinups"
end



def progress
	0.step(by: 10, to: 100) do |number|
		yield number
	end
end

progress { |percent| puts percent }
