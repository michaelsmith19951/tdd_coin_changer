# Use the Ruby gem 
require "minitest/autorun"

# Use the file that will be tested
require_relative "tdd_coin_changer.rb"

# Test the test_new_calc.rb for passes and failures
class TestTddCoinChanger < Minitest::Test

	def test_assert_that_quarters_is_25
		assert_equal(25, "quarters")
	end
end