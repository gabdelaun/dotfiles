class HtmlView

  def list_all_products(products)

    html = ""
    products.each_with_index do |product, index|
      html << "<p> #{index + 1} #{product.name}</p>"
    end

  end
  return html
end
