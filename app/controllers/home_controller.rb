class HomeController < ApplicationController

  def show
    @carousel = []
    carousel_directory = Dir.open "public/carousel"

    carousel_directory.each do |image|
      if image.length > 2
        @carousel.push("carousel/"+image)
      end
    end
    @home = Home.find(1)
    @title = @home.title
    @left_header = @home.left_header
    @left_body = @home.left_body
    @right_header = @home.right_header
    @right_body = @home.right_body
  end


  def edit
    @home = Home.find(1)
  end

  def update
    @home = Home.find(params[:id])
    if @home.update(home_params)
      redirect_to '/'
    else
      render :edit
    end
  end

  private
  def home_params
    params.require(:home).permit(:title, :left_header, :left_body, :right_header, :right_body)
  end

end
