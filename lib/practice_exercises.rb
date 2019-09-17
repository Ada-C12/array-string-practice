
# Time Complexity: o(n)
# Space Complexity: o(1)
def remove_duplicates(list)
  #raise NotImplementedError, "Not implemented yet"
  array = list.length
  index_1 = 0
  array.times do
    if list[index_1] == list[index_1 + 1]
      list.delete_at(index_1)
    else 
      index_1 +=1
    end
  end 
  return list
end

# Time Complexity: o(n^2)
# Space Complexity: o(1)
def longest_prefix(strings)
  # raise NotImplementedError, "Not implemented yet"
  return "" unless (strings.length > 0)
  output = ""
  first_w = strings[0]
  i = 0
  first_w.each_char do |letter|
    if strings.all?{|string| string[i] == letter }
      
      output += letter
      i += 1
    end
  end
  return output
end 

