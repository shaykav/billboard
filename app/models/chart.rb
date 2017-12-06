class Chart < ApplicationRecord

  def self.fetch
    url = "https://www.billboard.com/charts"

    response = HTTParty.get url
    html = response.body
    dom = Nokogiri::HTML(html)

    dom.css("a.chart-row__chart-link")
  end

end
