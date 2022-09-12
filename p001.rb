# frozen_string_literal: true

# Problem 1
# https://projecteuler.net/problem=1
require 'benchmark'

def sumofmultiple3or5below1000(arr)
  sum = 0
  arr.each do |n|
    if (n % 3).zero?
      sum += n
    elsif (n % 5).zero?
      sum += n
    end
  end
  sum
end

puts "P1 answer:#{sumofmultiple3or5below1000 (1..999).to_a}"

Benchmark.bm(5) do |x|
  x.report('P1') { sumofmultiple3or5below1000 (1..999).to_a }
end
