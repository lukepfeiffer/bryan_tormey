class ImagesController < ApplicationController
  expose :image
  expose :images do
    Image.all
  end

  def index
  end

  def new
  end

  def create
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
