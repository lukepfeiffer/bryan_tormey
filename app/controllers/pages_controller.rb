class PagesController < ApplicationController
  expose :images do
    Image.all.order('images.priority_number')
  end

  def home
    @normal_view = true
  end

  def sign_in
  end
end
