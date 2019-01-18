require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'pry'

page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))

crypto_name = page.xpath('//td[2]/a').map{ |el| el.text}

crypto_value = page.xpath('//td[5]/a').map{ |el| el.text}

crypto_array = []
crypto_name.size.times do |i|
crypto_array << { crypto_name[i] => crypto_value[i].delete('$').to_f}

end

puts crypto_array


