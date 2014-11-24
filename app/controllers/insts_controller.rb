class InstsController < ApplicationController
  
  def new
    @inst = Inst.new
  end
  
  def create
    @inst = Inst.new(inst_params)
    if @inst.save
      redirect_to @inst
    else
      render 'new'
    end
  end
  
  def show
    @inst = Inst.find(params[:id])
  end
  
  def index
    @insts = Inst.all
  end
  
  def edit
    @inst = Inst.find(params[:id])
  end
  
  def update
    @inst = Inst.find(params[:id])
 
    if @inst.update(inst_params)
      redirect_to @inst
    else
      render 'edit'
    end
  end
  
  def destroy
    @inst = Inst.find(params[:id])
    @inst.destroy
 
    redirect_to insts_path
  end

  
  private
    def inst_params
      params.require(:inst).permit(:name, :location, :contact, :summary, :url)
    end
    
    
  
  
end
