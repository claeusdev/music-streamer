class PagesController < ApplicationController
  def index
    @tracks = Song.all
    @genres = Genre.all
  end

  def contact
  end
end
