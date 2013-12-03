class Option < ActiveRecord::Base
  validates :name, presence: true
  validates :price_in_cents, presence: true, numericality: { only_integer: true }
end
