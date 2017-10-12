
require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'rest-client'


# grades = { "Jane Doe" => 10, "Jim Doe" => 6 }


doc = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))


doc.xpath('//a[@class="price"]').each do |prix|
		 puts prix.text
	end
