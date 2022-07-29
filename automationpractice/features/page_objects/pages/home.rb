require_relative '../sections/header_sections'

module Pages
    class Home < SitePrism::Page
        set_url '/'

        section :header, Sections::Header , 'div.header-container' 

        def search_for(product)
            header.click_and_input_text_for_search(product)
        end
    end
end