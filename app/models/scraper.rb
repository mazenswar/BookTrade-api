require "open-uri"
require "nokogiri"


class Scraper

  def self.get_by_ISBN(isbn)

    html = open("https://www.googleapis.com/books/v1/volumes?q=isbn:#{isbn}")
    doc = Nokogiri::HTML(html)
    byebug
  end


end
0
