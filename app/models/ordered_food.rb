class OrderedFood < ActiveRecord::Base
  belongs_to :order
  belongs_to :food
end
