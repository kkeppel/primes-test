#!/usr/bin/env ruby

class PrimeTest
  include Math

  def self.get_n
    tries = gets
    tries ||= ""
    tries.chomp!
  end

  def self.get_n_prime_numbers(primes_count)
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

  def self.print_primes(primes_count)
    primes_count = primes_count.to_i
    columns = PrimeTest.get_n_prime_numbers(primes_count)
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

  def self.run
    puts "Enter number of primes:"

    loop do
      primes_count = PrimeTest.get_n
      if primes_count =~ /\d/ && primes_count.to_i > 0
        PrimeTest.print_primes(primes_count)
        break
      else
        puts "Please enter a number greater than 0.\n"
      end
    end
  end

end

PrimeTest.run if $0 == __FILE__