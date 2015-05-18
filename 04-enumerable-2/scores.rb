scores = [83, 71, 92, 64, 98, 87, 75, 69]

scores_doubled = scores.map { |score| score * 2 }
puts "Scores Doubled:"
p scores_doubled

puts "Total: #{scores.reduce(0, :+)}"

evens, odds = scores.partition { |score| score.even? }

puts "Evens: #{evens}"
puts "Odds: #{odds}"
