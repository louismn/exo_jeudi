require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'pry'

url_start = "http://annuaire-des-mairies.com"


def get_the_email_of_a_townhal_from_its_webpage(url)

   page = Nokogiri::HTML(open(url))
    p page.css('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').text


end


get_the_email_of_a_townhal_from_its_webpage("http://annuaire-des-mairies.com/95/champagne-sur-oise.html")





def get_all_the_urls_of_val_doise_townhalls
	 
	 page= Nokogiri::HTML(open('http://annuaire-des-mairies.com/val-d-oise.html'))
	 links = page.css("a").select{ |link| link['class'] == "lientxt"}
	 links.each {|link| print link["href"]}
	
	


#binding.pry
end



get_all_the_urls_of_val_doise_townhalls

