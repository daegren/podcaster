class ShowsController < ApplicationController
  
  def index
    @shows = Shows.all
  end
end
