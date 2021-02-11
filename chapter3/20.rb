require "json"
main_content = ""
File.open("jawiki-country.json"){|f|
  while line = f.gets
    hash = JSON.parse(line)
    main_content = hash["text"] if hash["title"].match(/イギリス/)
  end
}

File.open("UK.text","w"){|f|
  f.puts(main_content)
}

#下のコマンドはターミナルに大量にログが表示される。| head　など無効。
# File.open("jawiki-country.json"){|f|
#   hash = JSON.load(f)
# }
