x = "paraparaparadise"
y = "paragraph"

def gram(str = "")
  str.chars.each_cons(2).map{|n| n.join}
end

arr1 = gram(x)
arr2 = gram(y)
p arr1 | arr2 #和
p arr1 - arr2
p arr1 & arr2

p arr1.include?("se")
p arr2.include?("se")