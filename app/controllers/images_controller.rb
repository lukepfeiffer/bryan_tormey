class ImagesController < ApplicationController
  before_action :auth_user

  expose :image
  expose :images do
    Image.all.order('images.priority_number')
  end

  def index
  end

  def create
    image = Image.new(image_params)
    if image.save
      Image.increment_following( params[:image][:priority_number] , image)
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
    if image.update(image_params)
      Image.increment_following( params[:image][:priority_number], image )
      flash[:success] = "Successfully updated image!"
      redirect_to image_path(image.id)
    else
      flash[:danger] = "Something went wrong!"
      render :edit
    end
  end

  def destroy
    image = Image.find(params[:id])
    image.delete
    redirect_to images_path
  end

  private
  def auth_user
    if current_user.nil?
      flash[:danger] = "You do not have access!"
      redirect_to root_path
    end
  end

  def image_params
    params.require(:image).permit(
      :title,
      :filepicker_url,
      :priority_number
    )
  end
end
