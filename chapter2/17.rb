ary = []
File.open("popular-names.txt"){|f|
  f.each_line{|line|
    ary << line.split(" ")[0]
  }
}
puts ary.sort.uniq

#linuxコマンド例
#cut -f 1 popular-names.txt | sort | uniq
