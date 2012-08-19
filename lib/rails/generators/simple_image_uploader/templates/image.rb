class Image < ActiveRecord::Base
  attr_accessible :description, :file, :remove_file

  validates :description, :length => { maximum: 150 }

  mount_uploader :file, FileUploader
end
