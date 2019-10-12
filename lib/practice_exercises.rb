
# Time Complexity: OofNsquared bc delete_at takes up ALOT of space (so says my tutor)
# Space Complexity: Oof1 constant bc were not adding to it, we're subtracting
def remove_duplicates(list)
  i = 0
  list.length.times do |num|
    if list[i] == list [i + 1] #if this matches its neighbor...
      list.delete_at(i +1)  #...delete it!
    else
      i += 1 #move on
    end 
  end
  return list 
end

#hi chris, this one boggled my mind, dont mind my notes. 
# Time Complexity: OofNsquared *maybe?
# Space Complexity: OofN
def longest_prefix(strings)
  prefix = "" #where the prefix is gonna end up
  i = 0 #always start here :]
  
  while i < strings[0].length #from array - starting at the beginning of the word 
    j = strings[0][i] #get index of word @ letter
    k = 0 #counter For same letters #lets see how far we get
    
    strings.each do |string| #lets look and see whats up
      if j == string[i] #does j[letter] match index of letter of comparable string?
        k += 1 # If it does, it increments here!
      end
    end
    
    if k == strings.length #comparing matches against length
      prefix += j #adds letter if it finds a match
    else 
      break #gotta exit loop
    end
    i += 1 #index moves on
  end
  return prefix #boom boom
  
end #end of method

