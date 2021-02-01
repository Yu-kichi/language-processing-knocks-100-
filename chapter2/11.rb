File.open("popular-names.txt"){|f|
  f.each_line{|line|
    puts line.gsub(/\t/," ")
  }
}
