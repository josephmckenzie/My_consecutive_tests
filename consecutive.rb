def find_max_consecutive_indentical_elements(any_array)
consecutive_elements = []
count_of_consecutive_elements = []
any_array.each do |value|

if consecutive_elements.length == 0
consecutive_elements << value 

elsif value == consecutive_elements[-1]
consecutive_elements << value 

elsif any_array[-2]== any_array[-1]
consecutive_elements=[]
consecutive_elements<< value
elsif any_array[-2]== any_array[-3] && any_array[-3] ==any_array[-4]
count_of_consecutive_elements << consecutive_elements.count
consecutive_elements<< value 
consecutive_elements=[] << value
else 
count_of_consecutive_elements << consecutive_elements.count
consecutive_elements=[]
end
end
count_of_consecutive_elements << consecutive_elements.count
count_of_consecutive_elements.max 
end

def has_identical_letters?(str)
str.count("l")
end

def has_7_identical_letters?(str)
str.count("o")
end


# def find_max_consecutive_indentical_elements(any_array)
# if any_array.length == 0
# 0

# elsif any_array[0] == any_array[1] && any_array[1]== any_array[2]
# 3
# elsif any_array[0] == any_array[1]



# 2
# elsif any_array[-2]== any_array[-1]
# 2
# else
# 1
# end
# end