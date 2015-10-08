class AboutController < ApplicationController

  def show
    @about = About.find(1)
    @image = @about.image
    @title = @about.title
    @body = @about.body
    @contact_email = @about.contact_email
    @contact_phone = @about.contact_phone
    @contact_address = @about.contact_address
  end

  def edit
    @about = About.find(1)
  end

  def update
    @about = About.find(params[:id])
    if @about.update(about_params)
      redirect_to '/about'
    else
      render :edit
    end
  end

  private

  def about_params
    params.require(:about).permit(:title, :body, :contact_email, :contact_phone, :contact_address, :image)
  end

end
