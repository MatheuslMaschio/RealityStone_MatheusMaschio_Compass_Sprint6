module Sections
    class Products <SitePrism::Section
        element :name, 'a.product-name'
        element :price, 'span.price.product-price'
        element :image, 'div.product-image-container'
    end
end