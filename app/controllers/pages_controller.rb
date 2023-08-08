class PagesController < ApplicationController
  def home
  end

  def about
    # logique qui permettra de construire la page
    @members = ['superman', 'batman', 'robyn', 'Jacques DUTRONC', 'Daniel BALAVOINE']

    if params[:member]
      @members = @members.select { |member| member.starts_with?(params[:member])}
    end

    raise
  end

  def contact
    # logique qui permettra de construire la page
  end
end
