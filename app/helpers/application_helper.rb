module ApplicationHelper

  def appropriate_navbar
    if current_page?('/')
      render 'shared/navbar_home'
    else
      render 'shared/navbar'
    end
  end

  def navbar_margin
    if current_page?('/')
    else
      "page-wrapper-navbar-margin"
    end
  end

end
