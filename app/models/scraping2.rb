# yahoo.jinbutumeikan scraping
class Scraping2 
  def self.yahoo_url1
   agent = Mechanize.new
   current_page = agent.get('http://talent.yahoo.co.jp/')
   elements = current_page.search('.tblist a')
    # puts elements[0][:href]

    elements.each do |ele|
      link = ele[:href]
      self.yahoo_url2(link)
    end
  end

  def self.yahoo_url2(link)
    agent = Mechanize.new
    page = agent.get(link)
    second_url = page.search('.TLm07 .add a')
    # puts second_url[0][:href]
    # puts second_url[:href] if second_url
     second_url.each do |url|
      link2 = url[:href]
      # puts link2
     self.yahoo_url3(link2)
     end
   end

    def self.yahoo_url3(link2)
    agent = Mechanize.new
    page = agent.get(link2)

    third_url = page.at('h1').inner_text if page.at('h1')
    # puts page.at('h1')
     third_url = Third_url.where(name: name).first_or_initialize
     trird_url.save

  end
end