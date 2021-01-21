require 'nokogiri'
require 'open-uri'

def scrapper
    page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))
  end



def crypto(page)
    array_name = []
    array_value = []
    name_of_crypto = page.xpath('//*[@id="__next"]//tr//td[2]')
    value_of_crypto = page.xpath('//*[@id="__next"]//tr//td[5]')

    name_of_crypto.each do |name|
      array_name << name.text
    end
    value_of_crypto.each do |value|
      array_value << value.text
    end
mon_hash = Hash[array_name.zip array_value.map]
puts mon_hash
end
crypto(scrapper)