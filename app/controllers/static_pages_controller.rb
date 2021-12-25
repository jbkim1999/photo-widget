class StaticPagesController < ApplicationController
  require 'flickr'

  def index
    flickr = Flickr.new
    unless params[:user_id].blank?
      @photos = flickr.photos.search(user_id: params[:user_id])
    end
  end
end
