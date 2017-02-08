class Tale < ActiveRecord::Base
  validates :title, :presence => true
  has_many :contributions
end
