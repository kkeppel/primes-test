## primes-test

Thank you for reviewing my code test! My objective was as follows:

- Write a program that prints out a multiplication table of the first 10 prime numbers.
- The program must run from the command line and print one table to STDOUT.
- The first row and column of the table should have the 10 primes, with each cell containing the product of the primes for the corresponding row and column.
- Consider complexity. How fast does your code run? How does it scale?
- Consider cases where we want *N* primes.
- Do not use Prime class from stdlib.
- Write tests. Try to demonstrate TDD/BDD.

------------

To run the script, please first do a `bundle install` to acquire RSpec for testing.

Navigate to the project directory and run `ruby ./prime_test.rb`. You will be asked to input a number for the primes count. Pressing `Enter` will run the script for 10 primes by default. Test it out with bunches!

`rspec spec/prime_test_spec.rb` will run the tests.
