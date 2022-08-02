Quando('aumentar a quantidade do produto') do
    @product_page.btn_increase_quantity.click
  end
  
  Quando('adicionar o produto ao carrinho') do
    @product_page.btn_add_to_cart.click
    @product_page.wait_until_floatingCart_visible
  end
  
  Então('o produto deverá ser adicionado ao carrinho com a quantidade aumentada') do
    expect(@product_page.number_product.text).to eql '2'
  end