class DashboardsController < ApplicationController
  def show
    @artists = Artist.all
    @songs = Song.all
  end
end
