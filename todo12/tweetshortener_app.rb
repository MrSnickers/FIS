###TWEET SHORTENER

tweet = "OMG you guys, you won't believe how sweet my kitten is. My kitten is like super cuddly and too cute to be believed right? I'm running out of example tweets for you guys, which is weird, because I'm a writer and this is just writing and I tweet all day. For real, you guys. For real."

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
    puts word_array.join(" ")
  end
