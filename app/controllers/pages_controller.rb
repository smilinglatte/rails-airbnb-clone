class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  #stand alone pages that are not dynamic like the about page

  def home
    # if user_signed_in?
    #   redirect_to studios_path=end
     # end
  end
end
