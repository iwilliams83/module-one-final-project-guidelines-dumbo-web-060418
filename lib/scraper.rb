require 'nokogiri'
require 'open-uri'


doc = Nokogiri::HTML(open("https://www.bustle.com/p/the-game-of-thrones-character-for-your-myers-briggs-type-8219061"))
character_divs = doc.css(".eG")

div_info = []
# div_info will be an array of arrays, where each array contains three pieces of data:
#   -- myers-briggs personality expressed as 4 letters
#   -- Character name to which that personality type corresponds
#   -- Description of that personality type with respect to that character

character_divs.each do |div|
  info = (div.css('.eH').text.split(": "))
  info << (div.css(".eA").text)
  div_info << info
end
