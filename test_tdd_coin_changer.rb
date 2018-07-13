# Use the Ruby gem 
require "minitest/autorun"

# Use the file that will be tested
require_relative "tdd_coin_changer.rb"

# Test the test_new_calc.rb for passes and failures
class TestTddCoinChanger < Minitest::Test

	def test_if_hash_is_class
		amount = 1
		assert_equal(Hash, coin_changer(amount).class)
	end
end