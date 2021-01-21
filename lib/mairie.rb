require 'nokogiri'
require 'open-uri'

def nantes
    page = Nokogiri::HTML(URI.open("http://annuaire-des-mairies.com/44/nantes.html"))
    mail = page.xpath('//html/body/div[1]/main/section[2]/div/table/tbody/tr[4]/td[2]')
    name = page.xpath('//html/body/div[1]/main/section[2]/div/table/tbody/tr[1]/td[2]')
    nte_Mail = mail.text
    nte_Name = name.text

    ntehash = Hash[nte_Name, nte_Mail]
    print ntehash
end

def valoise
    page = Nokogiri::HTML(URI.open("http://annuaire-des-mairies.com/val-d-oise.html"))




nantes
