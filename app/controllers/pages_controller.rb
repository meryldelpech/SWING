class PagesController < ApplicationController
  def home
    # on selectionne les users qui ont au moins un talent
    @talented_users = User.select { |user| user.talents.any? }
    @talents = Talent.all
  end
end
