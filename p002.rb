# Frozen_string_literal: true

# Problem 2
# https://projecteuler.net/problem=2
require 'benchmark'

def even_fib_nums
  ans = 0
  x = 1
  y = 1
  while x <= 4_000_000
    ans += x if (x % 2).zero?
    x, y = y, x + y
  end
  ans
end

puts "even fib numbers less than 20: #{even_fib_nums}"

Benchmark.bm(5) do |x|
  x.report('P1') { even_fib_nums }
end
