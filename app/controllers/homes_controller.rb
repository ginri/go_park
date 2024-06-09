class HomesController < ApplicationController
  def top
    @regions = Region.all
  end

  def about
    @title = "About"
  end

end
