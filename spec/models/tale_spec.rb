require 'rails_helper'

describe Tale do
  it { should validate_presence_of :title }
  it { should have_many :contributions }
end
