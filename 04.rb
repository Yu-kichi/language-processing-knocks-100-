#リファクタリング前
# sentence = "Hi He Lied Because Boron Could Not Oxidize Fluorine. New Nations Might Also Sign Peace Security Clause. Arthur King Can."

# ary = sentence.split(" ")
# NUM = [1,5,6,7,8,9,15,16,19]
# index = Array.new(20,2)
# NUM.each do |n|
#   index[n-1] = 1
# end

# ans = []
# (0..19).each do |n|
#   if index[n] == 1
#     ans << ary[n].split("").first
#   else
#     ans << ary[n].split("")[0..1].join
#   end
# end
# ans2 = ans.zip(index)

# p Hash[ans2]

sentence = "Hi He Lied Because Boron Could Not Oxidize Fluorine. New Nations Might Also Sign Peace Security Clause. Arthur King Can."

answer = {}

sentence.split(/\W+/).each.with_index(1) do |word,index|
   if [1,5,6,7,8,9,15,16,19].include?(index)
    answer[word.split("")[0]] = 1
  else
    answer[word.split("")[0..1].join] = 2
  end
end
p answer
