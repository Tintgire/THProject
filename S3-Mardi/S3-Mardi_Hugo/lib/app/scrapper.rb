require 'pry'
require 'nokogiri'
require 'open-uri'



class Townhall
	attr_accessor :townhall

	def get_townhall_email(townhall_url)
		x = 0
		mail = []
		while townhall_url[x]
			page = Nokogiri::HTML(open('http://www.annuaire-des-mairies.com' + townhall_url[x][1..-1]))
			page.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').each do |i|
				mail << i.text
			end
			x += 1
		end
		return mail
	end

	def get_townhall_urls
		t_url = []
		page = Nokogiri::HTML(open('http://annuaire-des-mairies.com/val-d-oise.html'))
		page.xpath('//a[@class="lientxt"]').each do |i|
			t_url << i["href"]
		end
		return t_url
	end

	def t_name
		town_name = []
		page = Nokogiri::HTML(open('http://annuaire-des-mairies.com/val-d-oise.html'))
		page.xpath('//a[@class="lientxt"]').each do |i|
			town_name << i.text
		end
		return town_name
	end


	def initialize
		x = 0
		a = []
		url = get_townhall_urls
		mail = get_townhall_email(url)
		town_name = t_name
		while t_name[x]
			a[x] = { t_name[x] => mail[x] }
			x += 1
		end
		@townhall = a
	end
end

	def to_s
		puts @hash_townhall
	end

	def save_as_JSON
		File.open("db/email.JSON","w+") do |line|
		  line.write(@hash_townhall.to_json)
		end
	end

	def save_as_csv
		array_townhall = []
		@hash_townhall.each do |name_town,email_town| 
			array_townhall << [name_town, email_town]
		end

		CSV.open("db/email.csv","w+") do |csv|
			csv << ["city","email"]
		  array_townhall.each do |a|
		  	csv << a
		  end
		end
	end

	def save_as_spreadsheet
		array_townhall = []
		@hash_townhall.each do |name_town,email_town| 
			array_townhall << [name_town, email_town]
		end

		session = GoogleDrive::Session.from_config("config.JSON")
		spread_sheet = session.create_spreadsheet("liste email des mairies")
		ws = spread_sheet.worksheets[0]

		array_townhall.each_with_index do |townhall,i|
			ws[i+1,1] = townhall[0]
			ws[i+1,2] = townhall[1]
		end	
		ws.save
	end
end