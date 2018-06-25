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
		assert_equal(1,cigar("1234", "1567"))
	end
	def test_assert_that_returns_3
		num = "1234"
		winnum = "1034"
		assert_equal(3,cigar(num, winnum))
	end
	def test_assert_that_returns_a_string
		assert_equal([4,2,2], cigar_array(["1234", "1222", "1245"], "1234"))
	end
 end