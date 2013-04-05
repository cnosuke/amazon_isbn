require "amazon_isbn/version"
require 'amazon/ecs'

module AmazonIsbn

  class API
    
    attr :options

    def initialize(hs)
      @options = hs
    end

    def get_by_isbn(isbn)
      Amazon::Ecs.options = @options
      res = Amazon::Ecs.item_search(
                                    isbn.to_s,
                                    {:search_index => 'Books', 
                                      :response_group => 'Medium',
                                      :country => 'jp'})
      
      return res.items.map do |item|
        element = item.get_element('ItemAttributes')
        {
          :asin => item.get('ASIN'), 
          :title => element.get("Title"), 
          :page_url => "http://www.amazon.co.jp/dp/#{item.get('ASIN')}", 
          :isbn => element.get("ISBN"), 
          :author => element.get_array("Author").join(", "), 
          :product_group => element.get("ProductGroup"), 
          :manufacturer => element.get("Manufacturer"), 
          :publication_date => element.get("PublicationDate"), 
          :small_image => item.get_hash("SmallImage"), 
          :medium_image => item.get_hash("MediumImage"), 
          :large_image => item.get_hash("LargeImage")
        }
      end
    end
  end
end
