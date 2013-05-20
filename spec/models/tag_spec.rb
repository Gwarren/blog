require 'spec_helper'

describe Tag do
  before do
    @tag = Tag.new label: "ruby"
  end

  subject { @tag }

  it { should respond_to(:label) }
  it { should respond_to(:posts) }

  it { should be_valid }

  describe "when label is not present" do
    before { @tag.label = " " }
    it { should_not be_valid }
  end

  describe "when label is too long" do
    before { @tag.label = "a" * 41 }
    it { should_not be_valid }
  end

  describe "#to_s" do
    specify { @tag.to_s.should == "ruby" }
  end
end
