col1 = []
col2 = []
File.open("popular-names.txt"){|f|
  f.each_line { |line|
    ary = line.split(" ")
    col1 << ary[0]
    col2 << ary[1]
  }
}

File.open("col1.txt","w"){|f|
  col1.each {|s| f.puts(s)}
}

File.open("col2.txt","w"){|f|
  col2.each {|s| f.puts(s)}
}

#linuxコマンドの例
#cut -f 1 popular-names.txt > col1.txt