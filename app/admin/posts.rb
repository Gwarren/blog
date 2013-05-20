ActiveAdmin.register Post do

  form do |f|
    f.inputs "Details" do
      f.input :title
      f.input :tags
    end
    f.inputs "Content" do
      f.input :content
    end
    f.actions
  end
  
end
