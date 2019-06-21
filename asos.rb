require 'nokogiri'

require 'open-uri'

html_string = open ('http://www.asos.com/search/boots?q=boots')

html_doc =nokogiri::HTML(html_string)

binding.pry

html_doc.css('li.product-container').each do |product-container|
  p product-container.css('a.product.product-link').first.css('span.name').first.content
end
