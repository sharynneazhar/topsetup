class SetupImage < ApplicationRecord
  mount_uploader :image, ImageUploader

  belongs_to :setup
  
end
