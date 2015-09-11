require_relative "consecutive.rb"
require "minitest/autorun"

class Consecutive_test < Minitest::Test


def test_empty_arrays_return_zero
 results = find_max_consecutive_indentical_elements([])
 assert_equal(0, results )
end

def test_array_with_one_element
    results =
    find_max_consecutive_indentical_elements([1])
    assert_equal(1,results)
end

def test_array_for_2_non_identical_elements
 results =
 find_max_consecutive_indentical_elements([1,2])
 assert_equal(1, results)    

end

def test_array_for_2_identical_elements
    results = 
    find_max_consecutive_indentical_elements([1,1])
   assert_equal(2, results)
end

def test_array_for_2_consecutive_elements_and_1_non_consecutive
    results = 
    find_max_consecutive_indentical_elements([1,1,2])
   assert_equal(2, results)
end

def test_array_for_2_different_identical_elements_and_1_non_identical_element
    results = find_max_consecutive_indentical_elements([1,2,2,2])
   assert_equal(3, results)
end

def test_for_3_identical_elements_in_are_array
 results =
 find_max_consecutive_indentical_elements([1,1,1])
 assert_equal(3, results)
end

def test_to_itterate_through_array_and_find_identical_elements
    results =     find_max_consecutive_indentical_elements(Array.new(100,1))
    assert_equal(100, results)
end

def test_for_consecutive_identical_elements
results=find_max_consecutive_indentical_elements([1,2,1,2])
assert_equal(1,results)
end

def test_for_2_consecutive_letters_in_an_array
results=find_max_consecutive_indentical_elements(["a","a","b","c"])
assert_equal(2, results)
end

def test_for_identical_elements_in_middle_of_array
    results = find_max_consecutive_indentical_elements([1,2,2,2])
   assert_equal(3, results)
end

def test_has_2_identical_letters
results=has_identical_letters?("hello")
assert_equal(2, results)
end

def test_has_7_identical_letters
results=has_7_identical_letters?("this_is_sooooooo_hard")
assert_equal(7,results)
end
end