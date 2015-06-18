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

# bills = bill.gsub(/[a-zA-Z]/, "").gsub("$", "").to_f
# percents = percent.gsub(/[a-zA-Z]/, "").gsub("%", "").to_f
# percentb = percents/100
# taxs = tax.gsub(/[a-zA-Z]/, "").to_f
# peoples = people.gsub(/[a-zA-Z]/, "").to_i
# tip = bills * percentb
# total = tip + taxs + bills
# final = total/peoples
# finals = (final*20).round / 20.000

def bill_clean(bill) 
	bill.gsub(/[a-zA-Z]/, "").gsub("$", "").to_f
end
bills = bill_clean(bill)

def tax_clean(tax)
	tax.gsub(/[a-zA-Z]/, "").to_f
end
taxs = tax_clean(tax)

def percent_clean(percent)
	percent.gsub(/[a-zA-Z]/, "").gsub("%", "").to_f
end
p = percent_clean(percent)

def percent_into_dec(p)
p/100
end
percents = percent_into_dec(p)

def people_clean(people)
	people.gsub(/[a-zA-Z]/, "").to_i
end
peoples = people_clean(people)

def tip_total(bills, percents)
	bills * percents
end
tip_amount = tip_total(bills, percents)

def total(tip_amount, taxs, bills)
	tip_amount + taxs + bills
end
totals = total(tip_amount, taxs, bills)

def final(totals, peoples)
	totals/peoples
end
finals = final(totals, peoples)

def final_clean(finals)
	(finals*20).round / 20.000
end
total_final = final_clean(finals)

puts "The total per person (including tip) is: $#{total_final}"






