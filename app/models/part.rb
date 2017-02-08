class Part < ApplicationRecord
  belongs_to :setup
  belongs_to :category, optional: true
end
