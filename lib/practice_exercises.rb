
# Time Complexity: O(n^2)
# Space Complexity: O(1)

def remove_duplicates(list)
  i = 0
  
  while i < list.length
    if list[i] == list[i+1]
      (i+1..list.length - 1).each do |k|
        list[k] = list [k+1]
      end
      list.pop  # for future reference: pop is O(1)
    else
      i += 1
    end
  end
  
  return list
end

# Time Complexity: O(n) because word lengths are pretty finite, else O(m*n)
# Space Complexity: O(n)
def longest_prefix(strings)
  arr_length = strings.length
  word_length = strings[0].length
  
  result = ""
  
  word_length.times do |i|
    
    current_letter = strings[0][i]
    
    arr_length.times do |j|
      if strings[j][i] != current_letter
        return result
      end
    end
    
    result << current_letter  # for future reference: push is O(1)
  end
  
  return result
end
