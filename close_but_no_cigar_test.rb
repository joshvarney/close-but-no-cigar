require "minitest/autorun"
require_relative "close_but_no_cigar.rb"
class TestClose_but_no_cigar < Minitest::Test 

	
	def test_assert_that_1_equal_1
		assert_equal(1, 1)
	end
	def test_assert_that_cigar_is_string
		assert_equal(Integer,cigar("", "").class)
	end
	def test_assert_that_returns_1
		assert_equal(1,cigar("", ""))
	end
	
	 
 end