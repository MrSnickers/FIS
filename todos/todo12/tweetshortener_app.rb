###TWEET SHORTENER

tweet_array = ["Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!", "OMG you guys, you won't believe how sweet my kitten is. My kitten is like super cuddly and too cute to be believed right?", "I'm running out of example tweets for you guys, which is weird, because I'm a writer and this is just writing and I tweet all day. For real, you guys. For real.", "GUISEEEEE this is so fun! I'm tweeting for you guys and this tweet is SOOOO long it's gonna be way more than you would think twitter can handle, so shorten it up you know what I mean? I just can never tell how long to keep typing!"]
truncated_array = []
tweet_array.each do |tweet|
  if tweet.size > 140
    word_array = tweet.split(" ")
    word_array.each_index do |i|
      word = word_array[i].downcase
      word_array[i] = "2" if word == "to" || word == "too" || word == "two"
      word_array[i] = "4" if word == "for" || word == "four"
      word_array[i] = "b" if word == "be"
      word_array[i] = "U" if word == "you"
      word_array[i] = "@" if word == "at"
      word_array[i] = "&" if word == "and"
    end
    truncated_array << word_array.join(" ")[0..139]
  end
end

puts truncated_array

