require 'pry'
# Time Complexity: O(n)
# Space Complexity: O(n)
def remove_duplicates(list)
  len = list.length
  if len == 1 || len == 0
    return list
  end

  new_list = []
  (0..len-1).each do |i|
    if list[i] != i
      new_list << list[i]
    end
  end
  return new_list
end

# Time Complexity: O(n^2)
# Space Complexity: O(n)
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