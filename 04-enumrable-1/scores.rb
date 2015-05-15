scores = [83, 71, 92, 64, 98, 87, 75, 69]

scores.reject! { |score| score.even? }
p scores

high_scores = scores.select { |score| score > 80 }
puts "High Scores:"
p high_scores 

low_scores = scores.reject { |score| score > 80 }
puts "Low Scores:"
p low_scores

puts "Are there any failing score?"
puts scores.any? { |score| score < 70 }

puts "The first score that is less than 70 is:"
puts scores.detect { |score| score < 70 }

scores.reject! { |score| score.even? }
p scores
