module ApplicationHelper
  def my_gravatar(options = { size: 50 })
    gravatar_id = Digest::MD5::hexdigest('xavier.nayrac@gmail.com')
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: 'Xavier Nayrac', class: "gravatar")
  end

  def full_title(page_title)
    base_title = "lkdjiin's blog"
    if page_title.empty?
      "#{base_title} - Confessions d'un développeur"
    else
      "#{base_title} - #{page_title}"
    end
  end
end
