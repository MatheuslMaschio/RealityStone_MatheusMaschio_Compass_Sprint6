
module Pages
    class Pagamento < SitePrism::Page
        set_url '?id_product=1&controller=product'
    
        element :btn_add_Cart, '[class="exclusive"]'
        element :floatingCart, '[class="layer_cart_product col-xs-12 col-md-6"]'
        element :floatingCartLayer, '[class="layer_cart_cart col-xs-12 col-md-6"]'
        element :btn_to_checkout, '[class="btn btn-default button button-medium"]'
        element :btn_to_checkout_number_two, '[class="button btn btn-default standard-checkout button-medium"]'
        element :btn_to_checkout_number_three, '[class="button btn btn-default button-medium"]'
        element :btn_terms_of_service, '[id="uniform-cgv"]'
        element :btn_bankwire, '[class="bankwire"]'
        element :msg_bankwire, '[class="cheque-indent"]'
        element :btn_cheque, '[class="cheque"]'
        element :msg_cheque, '[class="page-subheading"]'
        element :btn_confirm_my_order, '[class="button btn btn-default button-medium"]'
    end
end