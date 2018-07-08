class SearchesController < ApplicationController
  def search
    @songs = Song.where('title iLike?', "%#{params[:q]}%").order(created_at: :desc)
  end
end
