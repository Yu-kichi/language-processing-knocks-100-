ary = []
File.open("col1.txt"){|f|
  f.each_line{|line|
    ary << line.chomp 
  }
}
ary2 = []
File.open("col2.txt"){|f|
  f.each_line{|line|
    ary2 << line 
  }
}

texts = ary.zip(ary2).map{|ary| ary.join("\t") }
File.open("text.txt","w"){|f|
  texts.each {|s| f.puts(s)}
}

#linuxコマンド例
#paste col1.txt col2.txt > text.txt