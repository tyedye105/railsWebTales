require 'rails_helper'

describe "Will delete a contribution" do
  it "will delele a contribution" do
    test_tale = Tale.create({:title => "the cool story"})
    test_contribution = test_tale.contributions.create({:content => "cool ideas", :username => "la chica", :image => 52})
    visit tale_path(test_tale)
    expect(page).to have_content "cool ideas"
    click_link 'View Details'
    click_on "Delete contribution"
    expect(Contribution.all).to eq([])

  end
end
