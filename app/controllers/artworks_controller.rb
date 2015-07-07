class artworksController < ApplicationController

  def new
    @artist = Artist.find(params[:artist_id])
    @artwork = @artist.artworks.new
  end

  def create
    @artist = Artist.find(params[:artist_id])
    @artwork = @artist.artworks.new(artwork_params)
    if @artwork.save
      redirect_to artist_path(@artwork.artist)
    else
      render :new
    end
  end

  def show
    @artist = Artist.find(params[:artist_id])
    @artwork = Artwork.find(params[:id])
  end

  def edit
    @artist = Artist.find(params[:artist_id])
    @artwork = Artwork.find(params[:id])
  end

  def update
    @artwork = Artwork.find(params[:id])
    @artist = Artist.find(params[:artist_id])
    if @artwork.update(artwork_params)
      redirect_to artist_artwork_path(@artist, @artwork)
    else
      render :edit
    end
  end

  private
  def artwork_params
    params.require(:artwork).permit(:artwork_name, :artwork_image_url, :description)
  end

end
