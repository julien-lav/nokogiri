
require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'rest-client'
#require 'pry'
   




def get_all_the_urls_of_val_doise_townhalls()
	doc = Nokogiri::HTML(open("http://www.annuaire-des-mairies.com/val-d-oise.html"))
	doc.xpath('//a[@class="lientxt"]').each do |node|
	  all = node.text
	  get_the_email_of_a_townhal_from_its_webpage('#{all}')
	  
	end
end

 def get_the_email_of_a_townhal_from_its_webpage(ville)

	page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/95/"+ville+".html"))
	# page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/95/vaureal.html"))
	puts page.css('p')[37].text
 end 