(0..100).each do |index|
	file_name = "./_posts/2016-03-22-episode"+ index.to_s + ".md"
	text = File.read(file_name)
  text.gsub!("Episode 0", "Episode " + index.to_s)
	text.gsub!("0.mp3", index.to_s + ".mp3")
	text.gsub!("0.ogg", index.to_s + ".ogg")
	text.gsub!("0.m4a", index.to_s + ".m4a")

  File.open(file_name, "w") {|file| file.puts text }
end
