require 'spec_helper'

describe "PostPages" do
  subject { page }
  before do
    @post1 = Post.new title: "This is a post title",
                     content: "This is a post content\n-----------------\n"
    @post1.save
    visit root_path
  end

  it { should have_link "This is a post title" }

  describe "showing a post" do
    before { click_link "This is a post title" }

    it { should have_selector "h1", content: "This is a post title" }
    it { should have_selector "h2", content: "This is a post content" }
    it { should_not have_link "This is a post title" }
    it { should have_selector "title", content: "This is a post title" }
    it { should have_selector "title", content: "lkdjiin's blog" }
  end

end
