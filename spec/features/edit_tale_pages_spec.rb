require 'rails_helper'

describe "the edit tale process" do
  it "edit the title of a tale" do
    test_tale = Tale.create({:title => "The Hungry Hippo"})
    visit tale_path(test_tale)
    click_button "Edit this title"
    fill_in "Title", :with => "The Not So Hungry Hippo"
    click_on "Update"
    expect(page).to have_content 'The Not So Hungry Hippo'
  end
  it "gives error when no title is entered" do
    test_tale = Tale.create({:title => "The Hungry Hippo"})
    visit tale_path(test_tale)
    click_button "Edit this title"
    fill_in "Title", :with => ""
    click_on "Update"
    expect(page).to have_content 'errors'
  end
end
