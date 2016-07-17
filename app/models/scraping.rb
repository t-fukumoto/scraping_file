class Scraping
  def self.country
  agent = Mechanize.new
  page = agent.get('http://www.suginami-s.net/travelrep/world_data/flag.html')
  puts page
    elements = page.search('.tb-cell2 a')
    elements.each do |ele|

    image = ele.at('img')[:src] if ele.at('img')
    text = ele.inner_text if ele
    Work.create(image: image,text: text)if image

    end
  end
end