class Order < ActiveRecord::Base
  belongs_to :user
  has_many :ordered_foods
end
