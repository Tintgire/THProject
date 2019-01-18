require 'rubygems'
require 'nokogiri'
require 'pry'
require 'open-uri'

page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))

ville = page.xpath('//a[@class="lientxt"]').map{ |el| el.text}

puts ville
