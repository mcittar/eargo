class PublicationsController < ApplicationController

  def index
    @publications = Publication.all
    render 'publications/index.json.jbuilder'
  end

end
