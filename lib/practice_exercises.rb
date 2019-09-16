require "pry"
# Time Complexity: O(n2) because it is a nested loop.  Each loop runs n number of times where n is the 
# length of the input test_array. Since the loops are nested, the loop will run n X n number of times.
# Space Complexity: O(1) because the amount of memory used does not change as the size of the input changes. 
list = [1, 2, 2, 3, 3, 4]
def remove_duplicates(list)

  i = 1
  c = 0

  while list[c] != nil
    while list[c] == list[i]
      list.delete_at(list[i])
      i += 1
    end
    c += 1
  end 
  return list
end


# Time Complexity: O(n^3)
# Space Complexity: O(1) because the amount of memory used does not change as the size of the input changes. 


def longest_prefix(strings)

  shortest_word = "pneumonoultramicroscopicsilicovolcanoconiosis" 
 
  strings.each do |string|
    if string.length < shortest_word.length 
      shortest_word = string
    end 
  end 

  prefix_array = []
  strings.each_with_index do |string, index|
    i = 0
    shortest_word.each_char do |letter|
      if letter != string[i]
        prefix_array << shortest_word.slice(0..(i - 1))
      end 
      i += 1
    end
  end 

  shortest_prefix = "pneumonoultramicroscopicsilicovolcanoconiosis" 

  prefix_array.each do |prefix| 
    if prefix.length < shortest_prefix.length
      shortest_prefix = prefix
    end
  end 
 
  return shortest_prefix 
end





