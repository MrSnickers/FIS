###Collections Practice

collection_array = ["blake", "ashley", "scott"]

#1. sort the following array in ascending order
  collection_array.sort

#2. sort the following array in descending order
  collection_array.sort.{|n1,n2| n2<=>n1}
  collection_array.sort.{|a,z| z<=>a}

#3. put the following array in reverse order
  collection_array.reverse

#4. grab the second element in the array
  collection_array[1]

#5. print each element of the array to the console
  collection_array.each do |element|
    prints "#{element} "
  end

#6. create a new array in the following order
  # ["blake", "ashley", "scott"] 
  # should transform into
  # ["blake", "scott", "ashley"]
  array.replace(["blake", "ashley", "scott"])
  array.values_at(0,2,1)
  
# 7. using the following array create a hash where the elements in the array are the keys and the values of the hash are those elements with the 3rd character changed to a dollar sign.
#   ["blake", "ashley", "scott"]
collection_array_hash={}
collection_array.each do |element|
collection_array_hash [element] = element.gsub(element[2], "$")
end

# 8. create a hash with two keys, "greater_than_10", "less_than_10" and their values will be an array of any numbers greater than 10 or less than 10 in the following array
new_hash = {}
array_to_sort = [100, 1000, 5, 2, 3, 15, 1, 1, 100 ]
new_hash[:greater_than_10] = array_to_sort.collect(|x| x>10)
new_hash[:less_than_10] = array_to_sort.collect(|x| x<10)
 
# 9. find all the winners and put them in an array
  {:blake => "winner", :ashley => "loser", :caroline => "loser", :carlos => "winner"}



# 10. add the following arrays
#   [1,2,3] and [5,9,4]
  [1,2,3].concat([5,9,4])
  [1,2,3]<< [5,9,4]
  [1,2,3] + [5,9,4]
  [1,2,3] | [5,9,4] #does not add duplicates

# 11. find all words that begin with "a" in the following array
  array_to_sort = ["apple", "orange", "pear", "avis", "arlo", "ascot" ]
  array_to_sort.select {|element| if element[0].downcase == "a"}

    array_to_sort.each do |item|
      if item[0] == "a"
        container << item
      end
      container
    end

# 11. sum all the numbers in the following array
  to_total = [11,4,7,8,9,100,134]
  to_total.reduce(:+)

# 12. Add an "s" to each word in the array except for the 2nd element in the array?
  ["hand","feet", "knee", "table"]
  
CHALLENGE

word count

"The summer of tenth grade was the best summer of my life.  I went to the beach everyday and we had amazing weather.  The weather didnt really vary much and was always pretty hot although sometimes at night it would rain.  I didnt mind the rain because it would cool everything down and allow us to sleep peacefully.  Its amazing how much the weather affects your mood.  Who would have thought that I could write a whole essay just about the weather in tenth grade.  Its kind of amazing right?  Youd think for such an interesting person I might have more to say but you would be wrong"

Count how many times each word appears in my story.
Tip: You'll need to use Hash.new(0) to do this rather than creating a hash using literal syntax like {}.

song library

convert the following array of song titles
  
  ["dave matthews band - tripping billies", "dave matthews band - #41", "calvin harris - some techno song", "avicii - some other dance song", "oasis - wonderwall", "oasis - champagne supernova"]

to a nested hash of the form
{:artist1 => :songs => [], :artist2 => :songs => []}
[]