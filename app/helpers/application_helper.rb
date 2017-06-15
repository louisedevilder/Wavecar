module ApplicationHelper

  def appropriate_navbar
    if current_page?('/')
      # render 'shared/navbar_home'
    else
      render 'shared/navbar'
    end
  end

end
