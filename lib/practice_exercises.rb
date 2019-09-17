
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




# Space Complexity: ?
# def longest_prefix(strings)
#   first_word = strings[0]
#   length = strings.length
#   length -= length

#   length.times do |index|
#     comparison_word = array[index + 1]

# end


