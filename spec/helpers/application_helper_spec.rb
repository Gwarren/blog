require 'spec_helper'

describe ApplicationHelper do

  describe "full_title" do
    it "should include the page title" do
      full_title("foo").should =~ /foo/
    end

    it "should include the base title" do
      full_title("foo").should =~ /^lkdjiin's blog/
    end

    it "should not include a hyphen for the home page" do
      full_title("").should =~ /Confessions/
    end
  end
end
