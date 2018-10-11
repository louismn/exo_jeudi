require 'rubygems'
require 'nokogiri'
require "open_uri"

def get_the_email_of_a_townhal_from_its_webpage

	page = Nokogiri::HTML(open('http://annuaire-des-mairies.com/95/vaureal.html'))

	puts page.class ("lientxt2")

end