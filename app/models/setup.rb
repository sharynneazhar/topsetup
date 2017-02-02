class Setup < ApplicationRecord
  has_many :setup_images
  accepts_nested_attributes_for :setup_images
end
