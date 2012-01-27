class FeedsController < ApplicationController
  
  #GET /feed
  def index
    curTime = Time.now
    @podcasts = Podcast.where('pubDate <= ?', curTime)
    
    respond_to do |format|
      format.rss
    end
  end
end