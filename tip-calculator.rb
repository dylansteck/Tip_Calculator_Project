# Tip Calculator by Jared Wasserman, Viraj Kathuria, and Dylan Steck
puts "Welcome to our Tip Calculator!"

puts "How much is your bill before tax?"
bill = gets.chomp

puts "How much is the tax?"
tax = gets.chomp

puts "What percent would you like to tip?"
percent = gets.chomp

puts "How many people are you splitting the bill with?"
people = gets.chomp

bills = bill.gsub(/[a-zA-Z]/, "").gsub("$", "").to_f
percents = percent.gsub(/[a-zA-Z]/, "").gsub("%", "").to_f
percentb = percents/100
taxs = tax.gsub(/[a-zA-Z]/, "").to_f
peoples = people.gsub(/[a-zA-Z]/, "").to_i
tip = bills * percentb
total = tip + taxs + bills

puts "The total per person (including tip) is: $#{total/peoples}"






