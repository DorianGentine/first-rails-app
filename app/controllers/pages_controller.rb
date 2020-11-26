class PagesController < ApplicationController
  def about
  end

  def contact
    @members = [ 'thanh', 'dimitri', 'germain', 'damien', 'julien', 'dorian' ]

    if params[:member]
      @members = @members.select { |member| member.start_with?(params[:member]) }
  end

  def home
  end
end
