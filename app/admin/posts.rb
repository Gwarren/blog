ActiveAdmin.register Post do

  form do |f|
    f.inputs "Details" do
      f.input :title
      f.input :tags
      f.input :description, hint: "this string goes in the meta tag."
    end
    f.inputs "Content" do
      f.input :content, hint: "Use markdown to format your text."
    end
    f.actions
  end
  
end
