class IceCreamsController < ApplicationController
  before_action :authorized, except: [:index]


  def index
      @ice_creams = IceCream.all
      render :index
  end

  def show
    @ice_cream = IceCream.find(params[:id])
    render :show
  end

end
