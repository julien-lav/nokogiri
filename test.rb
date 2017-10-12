
require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'rest-client'
require 'pry'
   

 
page = Nokogiri::HTML(RestClient.get("https://en.wikipedia.org/wiki/HTML"))  
# site = Nokogiri::HTML(open(SITE_URL))


# page = Nokogiri::HTML(open('http://en.wikipedia.org/wiki/HTML'))

# page.css('div#content div#bodyContent table.infobox tr th').each do |el|
#    puts el.text
# end
# links = site.css("a")

# puts links.length   # => 6
# puts links[0].text   # => Click here
# puts links[0]["href"] # => http://www.google.com
#puts page.css('div#funstuff')[0]

# puts page.css("title")[0].name   # => title
# puts page.css("title")[0].text   # => My webpage

# news_links = page.css("a")

# news_links.each{|link| puts link['href'] }

#=>   http://reddit.com
#=>   http://www.nytimes.com
         
# puts news_links.text   #=>   Array 
# page.css('p').css("a strong")
# binding.pry


page.css('li').each do |el|
	puts el.text
end