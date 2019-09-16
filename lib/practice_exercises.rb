
# Time Complexity: O(n)
# Space Complexity: O(n)
def remove_duplicates(list)
  # list is a sorted array of numbers
  unique_list = []
  
  list.each do |element|
    unless unique_list[-1] == element
      unique_list << element
    end
  end
  
  return unique_list
end




# Time Complexity: O(n^2)
# Space Complexity: O(n)
def longest_prefix(strings)
  shortest_string = strings.min_by { |string| string.length}  # O(n)
  
  match = ""
  shortest_string.length.times do |index|   #O(n)
    curr_char = strings[0][index]
    
    strings.each do |string|  #O(n)
      if string[index] != curr_char
        return match
      end
    end
    
    # all strings have matching letter on this index position
    match << curr_char
  end
  
  return match
end





def longest_prefix_ALT(strings)
  # find the longest common prefix string amongst an array of strings
  # Time O(n^2) and Space O(n)
  
  # get the match results from the first 2 strings 
  prev_match = get_head_matches(strings[0], strings[1])
  
  # if the first 2 strings don't have any chars in common, answer is automatically ""
  if prev_match == ""
    return ""
  end
  
  # compare the prev_match with each subsequent string, modifying prev_match with each iteration
  ((strings.length)-2).times do |index|
    prev_match = get_head_matches(prev_match, strings[index+2])
    puts
  end
  
  return prev_match
end

def get_head_matches(string1, string2)    
  # O(n) time & O(1) space
  shorter_string = [string1, string2].min_by { |str| str.length }
  
  index = 0
  match = ""
  
  while index < shorter_string.length
    if string1[index] == string2[index]
      match << string1[index]
    else 
      break
    end
    
    index += 1
  end
  
  return match
end


