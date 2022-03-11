class PhotosController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:index]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  include PhotosHelper

  def index
    @photos = get_possible_photos
  end

  def new
    @photo = Photo.new
  end

  def my_photos
    @photos = current_user.photos
  end

  def create
    @photo = Photo.create(photo_params)
    @photo.user = current_user
    if @photo.save
      redirect_to photo_path(@photo), notice: 'Photo uploaded successfully'
    else
      flash[:alert] = 'There was an error uploading your photo: '+ @photo.errors.full_messages.to_sentence
       redirect_to :new_photo
    end
  end

  def show
    @possible_photos = get_possible_photos
    @photo = @possible_photos.find_by_id(params[:id])
    if @photo.nil?
      render file: "#{Rails.root}/public/404.html", status: :not_found #404
    else
      render :show
    end
  end

  def edit
    @photo = current_user.photos.find_by_id(params[:id])
    if @photo.nil?
      render file: "#{Rails.root}/public/404.html", status: :not_found #404
    else
      render :edit
    end
  end

  def update
    @photo = current_user.photos.find_by_id(params[:id])
    if @photo.nil?
      render file: "#{Rails.root}/public/404.html", status: :not_found #404
    elsif @photo.update(photo_params)
      flash[:notice] = "Your photo '#{@photo.name}' has been updated successfully"
      redirect_to photo_path(@photo)
    else
      flash[:alert] = "There has been an error updating your photo '#{@photo.name}'"
      render :edit
    end
  end

  def destroy
    @photo = current_user.photos.find_by_id(params[:id])
    @photo.destroy
    flash[:notice] = "Your photo '#{@photo.name}' has been daleted successfully"
    redirect_to :my_photos
  end

  private
  def photo_params
    params.require(:photo).permit(:name, :url, :description, :license, :visibility)
  end

end
