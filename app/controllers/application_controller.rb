class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def random_image
    images = [1,2,3,4,5,6]
    images.sample
  end
end
