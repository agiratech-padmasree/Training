class DashboardsController < ApplicationController
  def index
    @total_products = Product.count
    @total_users = User.count
  end
end
