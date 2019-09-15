
# Time Complexity: O(n²)
  #We only go through the list once without an inner loop, so I thought it was O(n) at first.
  #But because I am including a 'delete_at' method, which I looked up the time complexity of and found O(n), I'm implementing another command for the algorithm to do, which is determined by O of n amount of times. 
  #Therefore I'm assuming it is O of n squared.
# Space Complexity: O(1)
def remove_duplicates(list)
  length = list.length
  i = 0
  while i < length 
    if list[i] == list[i + 1]
      list.delete_at(i + 1)
    end 
    i += 1
  end 
  return list 
end

# Time Complexity: 
# Space Complexity: 
def longest_prefix(strings)
  #["flower", "fork", "fuss"]
  prefix = ""
  i = 0

  while i < 
  #  strings[0][i] == strings[i + 1][i]
  #  prefix << strings[0][i]
  end 
  return prefix

end

