class PublicationsController < ApplicationController

  def index
    @publications = Publication.all
    render :show
  end

end
