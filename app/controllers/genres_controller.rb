class GenresController < ApplicationController
  def show
    @genre=Artist.find(params[:id])
  end

  def new
    @genre=Artist.new
  end

  def edit
    @genre=Artist.find(params[:id])
  end

  def update
    @genre=Artist.find(params[:id])
    @genre.update(genre_params)
    redirect_to genre_path(@genre)
  end

  def create
    @artist=Artist.create(genre_params)
    redirect_to artist_path(@genre)
  end


  private

  def genre_params
    params.require(:genre).permit(:name)
  end
end
