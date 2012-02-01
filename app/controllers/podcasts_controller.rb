class PodcastsController < ApplicationController
  
  def index
    @podcasts = Podcast.all
  end
  
  def new
    @podcast = Podcast.new
  end
end
