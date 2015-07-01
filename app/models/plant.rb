class Plant < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :image_url
  belongs_to :family
end
