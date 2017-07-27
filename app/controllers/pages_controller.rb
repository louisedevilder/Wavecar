class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @sports = Sport.all
    @last_waves = Wave.last(6)
  end
end
