class InstsController < ApplicationController
  
  def new
  end
  
  def create
    @inst = Inst.new(inst_params)
    @inst.save
    redirect_to @inst
  end
  
  def show
    @inst = Inst.find(params[:id])
  end
  
  def index
    @insts = Inst.all
  end
  
  private
    def inst_params
      params.require(:inst).permit(:name, :location)
    end
    
    
  
  
end
