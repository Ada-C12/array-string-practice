
# Time Complexity: n
# Space Complexity: 1
def remove_duplicates(list)
  current = 0
  result = 0

  until list.length - 1 < current 
    if list[result] != list[current] 
      result += 1
      list[result] = list[current]
    end
    current += 1
  end
  return list[0..result]
end

# Time Complexity: n, as my algorithm needs to iterate through all elements.
# Space Complexity: n, as I'm creating an array to store the characters in each iteration. More elements, longer the new array.
def longest_prefix(strings)
  same = true
  index = 0

  while same  
    array_characters = strings.map do |string|
      string[index]
    end

    current = 0
    until array_characters.length - 1 < current
      if array_characters[current] == array_characters[0]
        current += 1
      else
        same = false
      end
    end
    index += 1
  end  

  if same == true
    return strings.first[0..index]
  else
    return strings.first[0...index] 
  end
end 