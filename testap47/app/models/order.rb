class Order < ActiveRecord::Base
  belongs_to :user
  has_many :orderitems
  belongs_to :address
end
