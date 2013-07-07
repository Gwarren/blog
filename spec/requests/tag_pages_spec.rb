require 'spec_helper'

describe "TagPages" do
  subject { page }
  before do
    @post1 = Post.new title: "Title", content: "content"
    @post1.save
    @tag1 = @post1.tags.create({ label: 'tag1' })
    visit root_path
  end

  it { should have_link "tag1" }

  describe "a tag" do
    before { click_link "tag1" }

    it { should have_selector "h1", content: "Articles pour tag1" }
  end
end
