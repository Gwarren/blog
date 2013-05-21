# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Post do

  before do
    @post = Post.new title: "This is a post title",
                     content: "This is a post content\n-----------------\n"
  end

  subject { @post }

  it { should respond_to(:title) }
  it { should respond_to(:content) }
  it { should respond_to(:tags) }
  it { should be_valid }

  describe "when title is not present" do
    before { @post.title = " " }
    it { should_not be_valid }
  end

  describe "when title is too long" do
    before { @post.title = "a" * 256 }
    it { should_not be_valid }
  end

  describe "when content is not present" do
    before { @post.content = " " }
    it { should_not be_valid }
  end

end
