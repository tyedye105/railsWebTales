class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def random_image
    return Random.new.rand(158)
  end
  def all_images
    images = []
    (1..158).each() do |t|
      images.push(t)
    end
    return images
  end
end
