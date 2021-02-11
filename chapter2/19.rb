first_column = File.open("popular-names.txt"){|f|
  f.each_line.map{ |line|
    line.split(" ")[0]   
  }
}

hash = Hash.new(0)

first_column.each do |string|
  hash["#{string}"] +=1
end

sorted_hash = hash.sort_by do |key,value|
   -value
end

sorted_hash.each do |k,v|
  puts "#{k}:#{v}"
end

#linuxコマンド例
#cut -f 1 popular-names.txt | sort | uniq -c | sort -r