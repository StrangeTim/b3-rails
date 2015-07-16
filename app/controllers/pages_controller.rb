class PagesController < ApplicationController

  def home
    @carousel = []
    carousel_directory = Dir.open "public/carousel"
    carousel_directory.each do |image|
      if image.length > 2
        @carousel.push("carousel/"+image)
      end
    end
    render :home
  end

  def about
    render :about
  end

end
