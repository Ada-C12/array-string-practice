
# Time Complexity: O(n), linear,  because the amount of times the while loop iterates is directly proportionate to the length of the array.
# Space Complexity: O(1), constant, because there is no additional data being stored in addition to the array that is passed through, the reference itself is being changed. 
def remove_duplicates(list)
  i = 0
  
  while i < list.length
    if list[i] == list[i+1]
      list.delete_at(i)
    else 
      i+=1
    end
  end
  
  return list
end

# Time Complexity: O(n*m), quadratic, because there are two loops present: the while and the each. Each of those loops are based on different data sizes, and are proportionate to the size of the data.  
# Space Complexity: O(n), linear, because longest_prefix is a variable that may increase if the data size increases. 
def longest_prefix(strings)
  longest_prefix = ""
  base_word = strings.min_by {|word| word.length}
  i = 0
  
  while i < base_word.length
    letter_to_match = base_word[i]
    
    strings.each do |word|
      if word[i] != letter_to_match
        return longest_prefix
      end
    end
    longest_prefix += base_word[i]
    i+=1
  end
end
