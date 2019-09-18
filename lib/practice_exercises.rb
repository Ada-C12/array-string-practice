require "pry"
# Given nums = [0,0,1,1,1,2,2,3,3,4]
# Your function should return length = 5, 
# with the first five elements of nums being modified to 0, 1, 2, 3, and 4 respectively.

# Time Complexity: O(n) - depends of the length of the list
# Space Complexity: O(1) - doens't create another array
def remove_duplicates(list)
  i = 0
  while i < list.length
    if list[i] == list[i+1]
      list.delete_at(i)
    end
    i += 1
  end  
  return list
end 

# Find the longest common prefix string amongst an array of strings.
# Input: ["flower","flow","flight"]
# Output: "fl" 
# Input: ["dog","racecar","car"]
# Output: ""

# Time Complexity: O(nm) - depends on the length of strings = n and length of string[0] = m
# Space Complexity: O(m) - is reacreting a result total
def longest_prefix(strings)
  result = ""
  i = 0
  
  strings[0].each_char do |letter|
    strings.each do |string|
      if letter != string[i]
        return result
      end
    end
    
    result += letter
    i += 1
  end
  
  return result 
end
