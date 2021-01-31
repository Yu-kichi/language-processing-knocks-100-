def cipher(target)
  ary = target.chars.map do |string|
    string.match?(/[a-z]/) ? (219 - string.ord).chr : string
  end
  ary.join
end

target = "Hi He Lied Because Boron Could Not Oxidize Fluorine. New Nations Might Also Sign Peace Security Clause. Arthur King Can."

p cryptography = cipher(target)
p cipher(cryptography)