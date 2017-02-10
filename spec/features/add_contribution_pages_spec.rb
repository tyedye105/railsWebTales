require "rails_helper"

describe "the add a contribution process" do
  it "adds a new contribution to tale" do
    test_tale = Tale.create({:title => "the cool story"})
    visit tale_path(test_tale)
    click_button "Add a contribution"
    fill_in 'Content', :with => "Whatever"
    fill_in 'Username', :with => "coolchica"
    click_on "Create Contribution"
    expect(page).to have_content 'coolchica'
  end
end
