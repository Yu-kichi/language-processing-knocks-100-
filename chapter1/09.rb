text = "I couldn’t believe that I could actually understand what I was reading : the phenomenal power of the human mind ."

def shuffle_text(text)
  text.split(" ").map do |word|
    if word.length >4
      first_word =word[0]
      last_word = word[-1]
      shuffle_words = word[1..-2].chars.shuffle
      word = [first_word,shuffle_words,last_word].join
    else
      word
    end
  end
end

p shuffle_text(text)