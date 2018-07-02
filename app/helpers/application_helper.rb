module ApplicationHelper
  def gravatar_for(user, options = { size: 80 })
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: user.username, class: "img-circle")
  end

  def prefered_background_color
    return current_user.background_color if (current_user && current_user.background_color.present?)
    '#fff'
  end

  def prefered_navbar_color
    return current_user.navbar_color if (current_user && current_user.navbar_color.present?)
    '#aaa'
  end
end
