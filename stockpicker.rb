def stockpicker(ticker)
    response = HTTParty.get("http://finance.yahoo.com/q?s=#{ticker}")
    dom = Nokogiri::HTML(response.body)
    stock_price = dom.css(".time_rtq_ticker span").first
    company = dom.css(".title h2").first
    company.content + " Current stock price $" + stock_price.content
end




