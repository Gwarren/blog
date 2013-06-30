require 'spec_helper'

describe "LayoutLinks" do
  it "should have the right links on the layout" do
    visit root_path

    click_link "about"
    page.should have_selector('title', content: "About")

    click_link "lkdjiin's blog"
    page.should have_selector('title', content: "lkdjiin's blog")
  end

end
