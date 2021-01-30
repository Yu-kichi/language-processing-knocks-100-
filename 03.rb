#リファクタリング前
# sentence = "Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics."

# ans = sentence.split(" ").map do |word|
#   if word.include? "," 
#     word.length-1
#   elsif word.include? "."
#     word.length-1
#   else
#     word.length
#   end
# end
# p ans

#splitで正規表現を使えば簡潔に表現できる
sentence = "Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics."

answer = sentence.split(/\W+/).map do |word|
  word.length
end
p answer