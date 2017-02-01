class Setup < ApplicationRecord
  mount_uploaders :images, ImageUploader
end
