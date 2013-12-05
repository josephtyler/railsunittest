class Item < ActiveRecord::Base
  has_many :options
  validates :name, presence: true
end
