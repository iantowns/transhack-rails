class InstsController < ApplicationController
  
  def new
  end
  
  def create
    render plain: params[:inst].inspect
  end
  
end
