class GalleriesController < ApplicationController
  before_action :authenticate_user!, except: :show

  def show
  end
end
