class Cart < ActiveRecord::Base
  has_many :cartitems
  belongs_to :user
end
