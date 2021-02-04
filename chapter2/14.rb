File.open("popular-names.txt"){|f|
  ARGV[0].to_i.times do 
    puts f.readline
  end
}

#linuxコマンド例
#head -n 5 popular-names.txt 