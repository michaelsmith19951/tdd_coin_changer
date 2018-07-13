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

	# def test_if_quarter_equals_25
	# 	amount = 25
	# 	assert_equal({:quarter => 1}, coin_changer(amount))
	# end

	# def test_if_dime_equals_10
	# 	amount = 10
	# 	assert_equal({:dime => 1}, coin_changer(amount))
	# end

	def test_if_nickel_equals_5
		amount = 5
		assert_equal({:nickel => 5}, coin_changer(amount))
	end
end