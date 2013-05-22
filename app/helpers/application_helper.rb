module ApplicationHelper
  def my_gravatar(options = { size: 50 })
    gravatar_id = Digest::MD5::hexdigest('xavier.nayrac@gmail.com')
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: 'Xavier Nayrac', class: "gravatar")
  end
end
