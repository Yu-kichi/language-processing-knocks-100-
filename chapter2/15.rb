File.open("popular-names.txt"){|f|
  ary = f.readlines
  num = ARGV[0].to_i
  (num).downto(1) do |i|  
    puts ary[-i]
  end
}

#linuxコマンド例
#tail -n 5 popular-names.txt 