require 'nokogiri'
require 'open-uri'
require 'rubygems'

def scrapper
    return doc = Nokogiri::HTML(URI.open('https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&pagnum=575&debut_deputes=400&lang=fr#pagination_deputes'))
 end