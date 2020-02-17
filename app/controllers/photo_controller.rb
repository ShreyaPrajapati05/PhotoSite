class PhotoController < ApplicationController
  def index
    @user = User.find_by(id: params[:id])
    @photos = Photo.where(user_id: params[:id])
    @comments = Comment.all
    @user_all = User.all
  end
end
