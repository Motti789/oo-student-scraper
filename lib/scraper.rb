require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
        html = URI.open(index_url)
        doc = Nokogiri::HTML(html)
        students = []
        data = doc.css(".roster-body-wrapper")
        data.each do |student|
          puts student.text.strip
        end
    
  end

  def self.scrape_profile_page(profile_url)
    html = URI.open(profile_url)
    doc = Nokogiri::HTML(html)
    
  end

end

