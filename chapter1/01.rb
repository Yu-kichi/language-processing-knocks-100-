#リファクタリング前
# ary = "パタトクカシーー".split("")
# ans = 0.step(ary.length-1,2).map do |n|
#   ary[n]
# end
# puts ans.join("")

ary = "パタトクカシーー".chars
#odd_characters = ary.each_with_index.map{|character,index| character if (index+1).odd? }
odd_characters = ary.each.with_index(1).map{|character,index| character if index.odd? }
puts odd_characters.join
