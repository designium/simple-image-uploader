# simple-image-uploader

[![Code Climate](https://codeclimate.com/badge.png)](https://codeclimate.com/github/designium/simple-image-uploader)

simple-image-uploader is a Rails 3 generator that creates a small scaffold class called Image. It enables image upload feature to your web app at no time.

# Demo

    http://morning-sunset-6203.heroku.com/images

## Installation

Add this line to your application's Gemfile:

    gem 'simple-image-uploader'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install simple-image-uploader

## Usage

After adding gem 'simple-image-uploader' to your Gemfile.

You should go back to your terminal and type:

    rails g simple_image_uploader

The gem will generate all the files, routes and add the gems needed for image upload.

After, you can run

    rails s

Then you can access the following URL:

    http://localhost:3000/images

Use the Image class to see how you can add the image upload to your existing app.

For example, if you have a Post class where people can upload images for each post, you should add the following code:

In the models/post.rb

    has_many :images

In the models/image.rb

    belongs_to :post

And run

    rails g migration add_post_id_to_images post_id:integer

    rake db:migrate

    rails s

The secret is to link image model to each of your other models that need image upload. For each new link you can either create has_many or has_and_belongs_to relationships.



## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
