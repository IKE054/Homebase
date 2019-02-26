class HomeController < ApplicationController
  def top
  end

  def index
  	@items = Item.all
  end
end
