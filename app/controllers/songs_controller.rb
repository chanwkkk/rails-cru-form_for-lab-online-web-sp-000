class SongsController < ApplicationController
  def show
    @song=Song.find(params[:id])
    binding.pry
  end

  def new
    @song=Song.new
  end

  def edit
    @song=Song.find(params[:id])
  end

  def update
    @song=Song.find(params[:id])
    @song.update(genre_params)
    redirect_to song_path(@song)
  end

  def create
    @song=Song.create(genre_params)
    redirect_to song_path(@song)
  end

  private

  def song_params
    params.require(:song).permit(:name)
  end
end
