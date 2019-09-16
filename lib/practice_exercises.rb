# Time Complexity: O(n)
# Space Complexity: O(1)
def remove_duplicates(list)
  if list.length < 2
    return list
  else
    i = 0
    list.each do |num|
      if num == list[(i+1)]
        list.delete_at(i)
      end
      i += 1
    end
    return list
  end
end

# Time Complexity: O(n^2)
# Space Complexity: O(1)
def longest_prefix(strings)
  if strings.length < 2
    raise ArgumentError
  else
    prefix = ""
    l = 0
    (strings.min.length).times do
      s = 0
      track = 0
      (strings.length - 1).times do
        if strings[s][l] == strings [(s+1)][l]
          track += 1
        else
          break
        end
        s += 1
      end
      if track == (strings.length - 1)
        prefix << strings.min[l]
      else
        break
      end
      l += 1
    end
    return prefix
  end
end