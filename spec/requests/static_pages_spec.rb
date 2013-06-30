require 'spec_helper'

describe "StaticPages" do
  subject { page }

  describe "About page" do
    before { visit about_path }
    it { should have_content('About') }
    it { should have_selector('title', content: "About") }
  end

end
