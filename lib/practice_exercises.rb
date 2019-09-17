
# Time Complexity: O(n)
# Space Complexity: 0(1)
def remove_duplicates(list)
  i = 0
  j = 1
  until list[j] == nil
    if list[i] == list[j]
      list.delete_at(list[j])
    else
      i+=1
      j+=1
    end
  end
  return list
end

# Time Complexity: O(n^4)
# Space Complexity: 0(n)
def longest_prefix(strings)
  i = 1
  j = 0
  k = 0
  output = ""
  characters = []
  length = strings.length
  strings.each do |word|
    characters << word.chars
  end
  
  characters.each do |item|
    until j == length-1
      until k == length-1
        if item[k] != characters[i][k]
          return output
        else
          
          i += 1
        end
        output += item[k]
        k += 1
        j += 1
      end
    end
    return output
  end
end
