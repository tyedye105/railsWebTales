require 'rails_helper'

describe "the add a tale process" do
  it "adds a new tale" do
    visit tales_path
    click_button "Add a new web tale"
    fill_in 'Title', :with => "Whatever"
    click_on "Create Tale"
    expect(page).to have_content 'Whatever'
  end
  it "gives error when no title is entered" do
    visit new_tale_path
    click_on 'Create Tale'
    expect(page).to have_content 'errors'
  end
end
