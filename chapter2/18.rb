texts = File.open("popular-names.txt"){|f|
  f.each_line.map{|line|
    line.split(" ")
  }
}

sorted_texts = texts.sort_by do |a|
  -a[2].to_i
end

File.open("test18.text","w"){|f|
  sorted_texts.each {|line|
    f.puts(line.join("\t"))  
  }
}

#linuxコマンド例
# sort -k 3nr popular-names.txt 