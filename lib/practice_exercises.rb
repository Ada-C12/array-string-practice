# Time Complexity: O(n)
# Space Complexity: O(1)
def remove_duplicates(list)
  index_a = 0
  index_b = 1
  temp = 0
  while index_b < list.length
    if (list[index_a] == list[index_b])
      temp = list[index_b]
      list[index_b] = nil
    end
   
    if (list[index_a] == nil) && (temp == list[index_b]) 
      list[index_b] = nil
    end

    index_a += 1
    index_b += 1

  end
  return list
end

# Time Complexity: O(mn) n = strings.length and m = smallest length in strings
# Space Complexity: O(1)

def all_same_index?(strings, index)
  b = true
  a = strings[0][index]
  strings.each do |string|
    if string[index] != a
      b = false
    end
  end
  return b
end

def longest_prefix(strings)
  min_string = strings.min_by do |string| string.length end # O(n)
  min_length = min_string.length
  prefix = ""
  index = 0
  while index < min_length # O(m)
    if all_same_index?(strings, index) == true # O (n)
      prefix += strings[0][index]
      index += 1
    else
      return prefix
    end
  end
  return prefix
end
  
      

