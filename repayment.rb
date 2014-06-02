#!/bin/ruby
@years=30

def repayment(loan_amount, interest_rate, period)
  exp=(@years*period)*-1
  rate=interest_rate/(period*100)
  repayment = (rate*loan_amount) / (1 - ((1+rate)**exp))
  return repayment
end

loan_amount=400000

puts "Yearly Repayment: $#{repayment(loan_amount, 5.09, 1)}"
puts "BiAnnual Repayment: $#{repayment(loan_amount, 5.09, 2)}"
puts "Quarterly Repayment: $#{repayment(loan_amount, 5.09, 4)}"
puts "Monthly Repayment: $#{repayment(loan_amount, 5.09, 12)}"
puts "Weekly Repayment: $#{repayment(loan_amount, 5.09, 52)}"
puts "Daily Repayment: $#{repayment(loan_amount, 5.09, 365)}"
puts "Hour Repayment: $#{repayment(loan_amount, 5.09, 365*24)}"
puts "Minute Repayment: $#{repayment(loan_amount, 5.09, 365*24*60)}"
