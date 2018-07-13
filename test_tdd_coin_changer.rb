# Use the Ruby gem 
require "minitest/autorun"

# Use the file that will be tested
require_relative "tdd_coin_changer.rb"

# Test the test_new_calc.rb for passes and failures
class TestTddCoinChanger < Minitest::Test

	def test_if_hash_is_class
		amount = 0
		assert_equal(Hash, coin_changer(amount).class)
	end

	def test_if_quarter_equals_25
		amount = 25
		assert_equal({:quarter => 1, :dime => 0, :nickel => 0, :penny => 0}, coin_changer(amount))
	end

	def test_if_dime_equals_10
		amount = 10
		assert_equal({:quarter => 0, :dime => 1, :nickel => 0, :penny => 0}, coin_changer(amount))
	end

	def test_if_nickel_equals_5
		amount = 5
		assert_equal({:quarter => 0, :dime => 0, :nickel => 1, :penny => 0}, coin_changer(amount))
	end

	def test_if_penny_equals_1
		amount = 1
		assert_equal({:quarter => 0, :dime => 0, :nickel => 0, :penny => 1}, coin_changer(amount))
	end

	def test_if_all_coins_are_0
		amount = 0
		assert_equal({:quarter => 0, :dime => 0, :nickel => 0, :penny => 0}, coin_changer(amount))
	end

	def test_if_all_coins_are_present
		amount = 23
		assert_equal({:quarter => 1, :dime => 1, :nickel => 1, :penny => 1}, coin_changer(amount))
	end

	
end