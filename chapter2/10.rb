count = 0
File.open("popular-names.txt"){|f|
  f.each_line{|line|
    count +=1
  }
}
p count 

