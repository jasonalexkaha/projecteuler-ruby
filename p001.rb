# frozen_string_literal: true

# Problem 1
# https://projecteuler.net/problem=1
def sumofmultiple3or5below1000(arr)
  sum = 0
  arr.each do |n|
    if n % 3 == 0
      sum += n
    elsif n % 5 == 0
      sum += n
    end
  end
  sum
end

puts sumofmultiple3or5below1000 (1..999).to_a
