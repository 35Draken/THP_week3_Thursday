require_relative '../lib/trader.rb'

describe "make_hash method, it should return a hash with both arrays" do
    it "Wrong type" do
        expect(scrapper).to have_link("About Developer Portal", href: 'https://coinmarketcap.com/all/views/all/')
    end
end