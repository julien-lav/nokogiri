
require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'rest-client'



ville = []

def get_all_the_urls_of_val_doise_townhalls()
	doc = Nokogiri::HTML(open("http://www.annuaire-des-mairies.com/val-d-oise.html"))
	cityTab = []

	doc.xpath('//a[@class="lientxt"]').each do |node|
		 cityTab<<node.text
	end
		puts  cityTab.length
	     get_the_email_of_a_townhal_from_its_webpage(cityTab)
end

  def get_the_email_of_a_townhal_from_its_webpage(villes)
 	
	 villes.each do |ville|
		 puts ville
  		 page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/95/"+ville+".html"))
		# page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/95/vaureal.html"))
		puts page.css('p:contains("@")').text
	 end 

  end 

get_all_the_urls_of_val_doise_townhalls()