class PagesController < ApplicationController
  def index
    @tracks = Song.all.limit(5)
    @genres = Genre.all
    @songs = Song.all
  end

  def contact
  end

  def thanks
  	@song = Song.find(params[:id])
  end
end
