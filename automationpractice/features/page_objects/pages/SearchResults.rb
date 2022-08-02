require_relative '../sections/header_sections'
require_relative '../sections/product_sections'

module Pages
    class SearchResults < SitePrism::Page
        set_url '/?controller=search&orderby=position&orderway=desc&search_query=submit_search='

        section :header, Sections::Header, 'div.header-container'
        sections :products, Sections::Products, 'div.product-container'

        
        def acess_product_page(index)
            products[index].name.click
        end   
    end
end