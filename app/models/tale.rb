class Tale < ActiveRecord::Base
  validates :title, :presence => true
end
