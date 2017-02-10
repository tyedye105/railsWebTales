require 'rails_helper'
describe "the edit a contribution process" do
  it "adds a new contribution to tale" do
    test_tale = Tale.create({:title => "the cool story"})
    test_contribution = test_tale.contributions.create({:content => "cool ideas", :username => "la chica", :image => 52})
    visit tale_path(test_tale)
    click_link "View Details"
    click_button "Edit this contribution"
    fill_in 'Content', :with => "noooot coool ideas"
    fill_in 'Username', :with => "something"
    click_on "Update Contribution"
    visit tale_path(test_tale)
    expect(page).to have_content "noooot coool ideas"
  end
end
