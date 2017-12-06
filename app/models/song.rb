class Song < ApplicationRecord

  def self.fetch(chart_name)

    url = "https://www.billboard.com/charts/#{chart_name}"

    response = HTTParty.get url
    html = response.body
    dom = Nokogiri::HTML(html)

    dom.css("h2.chart-row__song")
  end


end
