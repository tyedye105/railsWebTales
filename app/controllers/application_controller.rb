class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def random_image
    return Random.new.rand(158)
  end
end
