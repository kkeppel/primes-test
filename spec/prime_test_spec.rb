require_relative '../prime_test.rb'
require 'spec_helper'
require 'rspec'
require 'prime'

describe PrimeTest do
  let(:user_input)  { "11" }
  let(:primes)      { PrimeTest.print_primes(user_input) }

  before :each do
    PrimeTest.stub(:get_n).and_return(user_input)
  end

  it "#get_n_prime_numbers should == user input" do
    primes.length.should == user_input.to_i
  end

  it "#get_n_prime_numbers should be prime" do
    ruby_primes = Prime.take(user_input.to_i) # compare test function with Ruby stdlib for accuracy
    primes.should == ruby_primes
  end
end