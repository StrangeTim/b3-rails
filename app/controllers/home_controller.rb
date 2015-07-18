class HomeController < ApplicationController

  def show
    @carousel = []
    carousel_directory = Dir.open "public/carousel"

    carousel_directory.each do |image|
      if image.length > 2
        @carousel.push("carousel/"+image)
      end
    end

  end


  def edit

  end

  def update
    
  end

end
