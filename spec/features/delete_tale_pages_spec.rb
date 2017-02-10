require 'rails_helper'

describe "delete a tale process" do
  it "deletes a tale from the database" do
    test_tale = Tale.create({:title => "The Hunger Shenaningans"})
    visit tale_path(test_tale)
    click_button "Delete this tale"
    expect(Tale.all).to eq([])
  end
end
