
# Time Complexity: ?
# Space Complexity: ?
def remove_duplicates(list)
  return list if list.length == 1 || list.empty?
  
  i = 0
  
  
  while i < list.length - 1
    if list[i] == list[i+1]
      list.delete_at(i+1)
      
    else
      i += 1      
    end
  end
  
  return list
end

# Time Complexity: ?
# Space Complexity: ?
def longest_prefix(strings)
  raise NotImplementedError, "Not implemented yet"
end

