module SimpleImageUploader
  module Generators
    class SimpleImageUploaderGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)

      def create_image_model
        generate("model", "image description:string file:string")
        rake("db:migrate")
      end

      def generate_image_everything
        # Copy the controllers for user, sessions and password_reset
        copy_file "images_controller.rb", "app/controllers/images_controller.rb"
        copy_file "application_controller.rb", "app/controllers/application_controller.rb"
        copy_file "file_uploader.rb", "app/uploaders/file_uploader.rb"
        copy_file "image.rb", "app/models/image.rb"
        directory "images", "app/views/images/"
      end

      def insert_routes
        route("resources :images")
      end

      def add_gems
        gem("carrierwave")
        gem("mini_magick")
      end


    end
  end
end