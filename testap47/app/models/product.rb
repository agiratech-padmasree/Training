class Product < ActiveRecord::Base
  has_many :cartitems
  has_many :orderitems
end
