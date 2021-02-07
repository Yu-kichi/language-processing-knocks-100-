line_break = ARGV[0].to_i
ary = []
File.open("popular-names.txt"){|f|
   ary = f.readlines
}

index = 0
ary.each_slice(line_break) do |lines|
  index +=1
  File.open("test#{index}","w"){|file|
    file.puts(lines)
  }
end

#linuxコマンド例
#split -500 popular-names.txt 