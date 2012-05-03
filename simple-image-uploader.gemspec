# -*- encoding: utf-8 -*-
require File.expand_path('../lib/simple-image-uploader/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Chim Kan"]
  gem.email         = ["designium@gmail.com"]
  gem.description   = "simple-image-uploader creates Image scaffold with file upload and removal. It is based on carrierwave and mini-imagegick gems. Image model, controller and form are have simple code that allows any application to use image upload immediately. Add simple-image-uploader gem to your Gemfile. Run bundle install. Then run 'rails g simple_image_uploader'. Run rails s and check http://localhost:3000/images. "
  gem.summary       = "simple-image-uploader allows you to upload images to your Rails 3 app immediately with minimum of effort."
  gem.homepage      = "https://github.com/designium/simple-image-uploader"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "simple-image-uploader"
  gem.require_paths = ["lib"]
  gem.version       = Simple::Image::Uploader::VERSION

  gem.files         = Dir["{lib}/**/*", "[A-Z]*"]
end
