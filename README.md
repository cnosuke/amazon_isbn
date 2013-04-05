# AmazonIsbn

This gem help you to get some attributes of your books from ISBN via Amazon Product Advertising API.

## Installation

Add this line to your application's Gemfile:

    gem 'amazon_isbn'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install amazon_isbn

## Usage

    
    require 'amazon_isbn'
    api = AmazonIsbn::API.new {
      :associate_tag => 'YOUR_ASSOCIATE_TAG', 
      :AWS_access_key_id => 'YOUR_AWS_ACCESS_KEY_ID',
      :AWS_secret_key => 'YOUR_AWS_SECRET_KEY'
    }
    
    api.get_by_isbn('ISBN_CODE_HERE')
        

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## LICENSE
This gem is distributed under MIT License.
