module Pages
    class ProductPage < SitePrism::Page
        set_url'/'

        elements :colors, '.attribute_list a'
        element :main_image, '#bigpic'
        element :btn_increase_quantity, '[class="btn btn-default button-plus product_quantity_up"]'
        element :btn_add_to_cart, '[id="add_to_cart"] [type="submit"]'
        element :floatingCart, '[class="layer_cart_product col-xs-12 col-md-6"]'
        element :number_product, '[id="layer_cart_product_quantity"]'
        element :btn_to_checkout, '[class="btn btn-default button button-medium"]'

    end
end