class Flyer
  attr_reader :name, :email, :miles_flown
  attr_accessor :status

  def initialize(name, email, miles_flown, status=:bronze)
    @name = name
    @email = email
    @miles_flown = miles_flown
    @status = status
  end

  def to_s
    "#{name} (#{email}): #{miles_flown} - #{status}"
  end
end

flyers = []
flyers << Flyer.new("Larry", "larry@example.com", 4000, :platinum)
flyers << Flyer.new("Moe", "moe@example.com", 1000)
flyers << Flyer.new("Curly", "curly@example.com", 3000, :gold)
flyers << Flyer.new("Shemp", "shemp@example.com", 2000)

puts "Frequent Flyers:"
frequent_flyers = flyers.select { |flyer| flyer.miles_flown >= 3000 }
puts frequent_flyers

puts "__________"
puts "\nInfrequent FLyers:"
infrequent_flyers = flyers.reject { |flyer| flyer.miles_flown >= 3000 }
puts infrequent_flyers

puts "__________"
puts "\nAny platinum status flyers?"
puts "Yes" if flyers.any? { |flyer| flyer.status == :platinum }

puts "__________"
puts "\nWho's the first flyer with bronze status?"
puts flyers.detect { |flyer| flyer.status == :bronze }

puts "__________"
platinum_flyers, other_flyers = flyers.partition { |flyer| flyer.status == :platinum }
puts "\nPlatinum Flyers:"
puts platinum_flyers

puts "\nOther Flyers:"
puts other_flyers

puts "\n__________"
name_tags = flyers.map { |flyer| "#{flyer.name} (#{flyer.status.upcase})" }
puts name_tags

puts "\n__________"
kilometers_flown = flyers.map { |flyer| flyer.miles_flown * 1.6 }
p kilometers_flown

puts "\n__________"
total_miles_flown = flyers.reduce(0) { |sum, flyer| sum += flyer.miles_flown }
puts "Total miles flown: #{total_miles_flown}"

puts "Total kilometers flown: #{kilometers_flown.reduce(:+)}"

puts "\n__________"
puts "Total kilometers flown by bronze flyers:"
p flyers.select { |flyer| flyer.status == :bronze }.reduce(0) { |sum, flyer| sum += (flyer.miles_flown * 1.6) }

puts "\n__________"
puts "The flyer who has flown the most miles is:"
top_flyer = flyers.max_by { |flyer| flyer.miles_flown }
puts "#{top_flyer}"