class PodcastsController < ApplicationController
  
  def index
    @podcasts = Podcasts.all
  end
end
