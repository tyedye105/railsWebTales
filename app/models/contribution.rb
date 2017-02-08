class Contribution < ActiveRecord::Base
  validates :content, :presence => true
  validates :username, :presence => true
  belongs_to :tale

end
