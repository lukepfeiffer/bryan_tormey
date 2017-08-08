class PagesController < ApplicationController
  expose :images do
    Image.all
  end

  def home
    @normal_view = true
  end

  def sign_in
  end
end
