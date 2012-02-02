class PodcastsController < ApplicationController
  
  def index
    @podcasts = Podcast.all
  end
  
  def new
    @podcast = Podcast.new
  end
  
  def create
    @podcast = Podcast.new(params[:podcast])
    @podcast.image = "/assets/images/pe.png";
  
    if @podcast.save
      redirect_to @podcast, :notice => 'Post was successfully created.'
    else
      render :action => "new"
    end
  end
  
  def show
    @podcast = Podcast.find(params[:id])
  end
  
end
