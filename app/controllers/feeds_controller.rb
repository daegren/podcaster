class FeedsController < ApplicationController
  
  #GET /feed
  def index
    @podcasts = Podcast.all
    
    respond_to do |format|
      format.rss
    end
  end
end