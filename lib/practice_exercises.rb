require 'pry'
# Time Complexity: O(n)
# Space Complexity: O(n)
def remove_duplicates(list)
  index = 0
  while index <= list.length
    if list[index] == list[index + 1]
      list.delete_at(index)
    end
    index += 1
  end
  return list
end



# Time Complexity: O(n * m)
# Space Complexity: O(1)

def longest_prefix(strings)
  prefix = strings[0]
  original = prefix
  a_length = strings.length
  a_length -= 1
  
  
  a_length.times do |index|
    comparison_word = strings[index + 1]
    w_length = prefix.length
    w_length.times do |i|
      if prefix[i] != comparison_word[i] 
        i -= 1
        prefix = prefix[0..i]
        if prefix == original
          return ""
        end
        break
      end
    end
  end
  return prefix
end



