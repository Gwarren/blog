require 'spec_helper'

describe "StaticPages" do
  subject { page }

  describe "About page" do
    before { visit about_path }
    it { should have_content('À propos') }
    it { should have_selector('title', content: "À propos") }
  end

end
