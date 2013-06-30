FactoryGirl.define do

  factory :post do
    title "This is a post title"
    content "This is a post content\n-----------------\n"
  end

  factory :tag do
    label "ruby"
  end
end


