class RagotsController < ApplicationController
  def new
   @ragot = Ragot.new
  end

def create
  @ragot = Ragot.new(ragot_params)
  @ragot.save
  redirect_to @ragot
end

 def show
  @ragot= Ragot.find(params[:id])
end

def index
  @ragots = Ragot.all
end

def destroy
    @ragot = current_user.ragot.find(params[:id])
    @ragot.destroy
end

private
  def ragot_params
    params.require(:ragot).permit(:anonymous_username, :content)
  end

end
