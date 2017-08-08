class ImagesController < ApplicationController
  expose :image
  expose :images do
    Image.all
  end

  def index
  end

  def create
    image = Image.new(image_params)
    if image.save
      flash[:success] = "Image created successfully!"
      redirect_to images_path
    else
      flash[:danger] = "Something went wrong!"
      render :new
    end
  end

  def edit
  end

  def update
  end

  private

  def image_params
    params.require(:image).permit(
      :title,
      :filepicker_url
    )
  end
end
