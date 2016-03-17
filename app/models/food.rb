class Food < ActiveRecord::Base
  has_many :ordered_foods
  belongs_to :area
end
