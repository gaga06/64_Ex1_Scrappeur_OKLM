require "rubygems"
require "nokogiri"
require "open-uri"

class StartScrap

  def initialize
    @page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
  end

  def parse_name
     @data_name = @page.css("#currencies-all > tbody[2] > tr > td[2]")
    array_of_name = []
    @data_name.each do |crypto_name| array_of_name << {"name" => crypto_name["data-sort"] }
      end
    return array_of_name
  end

  def parse_prices
    @data_prices = @page.css("#currencies-all > tbody[2] > tr > td[5] > a.price")
    array_of_price = []
    @data_prices.each do |crypto_price| array_of_price << {"price" => crypto_price["data-usd"] }
      end
    return array_of_price
  end

  def perform
    parse_name.zip(parse_prices)
  end

end
