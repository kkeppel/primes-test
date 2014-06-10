#!/usr/bin/env ruby

class PrimeTest
  include Math

  def self.get_n
    gets.chomp
  end

  def self.get_n_prime_numbers
    puts "Enter number of primes:"
    primes_count = PrimeTest.get_n || 10

    primes_count = primes_count.to_i
    primes = [2]
    i = 1
    number = 3

    while i < primes_count
      sqrt_num = Math.sqrt(number)
      divide_by = 2

      while divide_by <= sqrt_num
        break if number % divide_by == 0
        divide_by += 1
      end

      if divide_by > sqrt_num
        primes << number
        i += 1
      end

      number += 2 # we don't care about evens
    end

    return primes
  end

  def self.run
    columns = PrimeTest.get_n_prime_numbers
    rows = columns.dup
    result = []

    columns.each {|c| result << rows.map { |r| r*c} }
    spaces = result.last.last.to_s.length + 2 # column spacing based on longest result

    header = print "    |"; columns.each { |c| printf "%#{spaces}s", c }; print "\n"

    table = rows.each_with_index do |r, i|
      printf " %2s |", r
      result[i].each { |res| printf "%#{spaces}s", res }
      print "\n"
    end

    header
    table
  end

end

PrimeTest.run