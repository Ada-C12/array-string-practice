
# Time Complexity: O(n) - it will always run however long the list is.
# Space Complexity: O(1) - nothing new is created
def remove_duplicates(list)
  
  stored_item = nil
  stored_index = 0
  new_array_length = 0
  current_index = 0

  if list.length <= 1
    return list
  end

  if list.length > 1
    until list[current_index - 1] == list.last && stored_item != nil
      if stored_item == nil
        stored_item = list[current_index]
        list[stored_index] = list[current_index]
        new_array_length += 1
        current_index += 1
        stored_index += 1
      elsif list[current_index] > stored_item
        stored_item = list[current_index]
        list[stored_index] = list[current_index]
        new_array_length += 1
        current_index += 1
        stored_index += 1
      elsif list[current_index] == stored_item
        current_index += 1
      end
    end
  end

  return list[0,new_array_length]

end

# Time Complexity: O(n*m) - or O(shortest_string.length * strings.length)
# Space Complexity: O(1) - 
def longest_prefix(strings)
  shortest_string = strings.min_by { |string| string.length }
  current_index = 0

  until current_index == shortest_string.length 
    strings.each do |string|
      if string[current_index] != shortest_string[current_index]
        return shortest_string[0,current_index]
      end
    end

    current_index += 1

  end

  return shortest_string[0,current_index]

end

