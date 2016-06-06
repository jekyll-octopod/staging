require 'byebug'
require 'date'

(1..100).each do |index|
	file_name = "./_posts/2016-03-22-episode"+ index.to_s + ".md"
	text = File.read(file_name)

  text.gsub!("March 22nd 2016", (Date.new(2016,1,1) + index).strftime('%B %d %Y'))
  File.open("./_posts/" + (Date.new(2016,1,1) + index).to_s + "-episode"+ index.to_s + ".md", "a+") {|file| file.puts text }
end
