string = "I am an NLPer"

def ngram(string, n)
  string.each_cons(n).map(&:join)
end

character = string.gsub(" ","").chars
words = string.split(" ")
p ngram(words,2)
p ngram(character,2)
