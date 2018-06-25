require "minitest/autorun"
require_relative "close_but_no_cigar.rb"
class TestClose_but_no_cigar < Minitest::Test 

	
	def test_assert_that_1_equal_1
		assert_equal(1, 1)
	end
	def test_assert_that_str1_doesnt_equal_str2
		str1 = "1234"
		str2 = "12345"
		assert_equal(String,cigar(str1,str2).class)
	end
end