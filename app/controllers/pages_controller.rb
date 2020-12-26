class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  
  def about
  end

  def contact
    @members = [ 'thanh', 'dimitri', 'germain', 'damien', 'julien', 'dorian' ]

    if params[:member]
      @members = @members.select { |member| member.start_with?(params[:member]) }
    end
  end

  def home
  end
end
