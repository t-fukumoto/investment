class Scraping
  def self.stock_urls
    agent = Mechanize.new

    page = agent.get('http://warrenbuffettstockportfolio.com/')
    elements = page.search('#fundtbl thead:nth-child(2) tr')


    elements.each do |ele|
      link = ele.at('td:nth-child(1) a')[:href]
      company = ele.at('td:nth-child(1) a').inner_text
      ticker = ele.at('td:nth-child(2) a').inner_text
      value = ele.at('td:nth-child(3)').inner_text
      share = ele.at('td:nth-child(4)').inner_text
      portfolio = ele.at('td:nth-child(5)').inner_text
      stockinformation = Stockinformation.new(link: link, company: company, ticker: ticker,value: value,share: share,portfolio: portfolio)
      stockinformation.save
    end
  end

end
