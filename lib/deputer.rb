require 'nokogiri'
require 'open-uri'
require 'rubygems'

def scrapper
    return doc = Nokogiri::HTML(URI.open('https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&pagnum=575&debut_deputes=400&lang=fr#pagination_deputes'))
 end

 def deputer
    array_name = []
    array_mail = []
    page_city = Nokogiri::HTML(URI.open("https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&pagnum=575&debut_deputes=400&lang=fr#pagination_deputes"))
    mail_city = page_city.xpath('//html/body/div[1]/main/section[2]/div/table/tbody/tr[4]/td[2]')
    name_city = page_city.xpath('//html/body/div[1]/main/section[1]/div/div/div/h1')

    m_city = mail_city.text
    n_city = name_city.text

    mon_hash = Hash[n_city, m_city]

    puts mon_hash
end

deputer