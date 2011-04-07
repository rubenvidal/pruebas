class TrabajosController < ApplicationController
  def index
    @trabajos = Trabajo.all
  end

  def show
    @trabajo = Trabajo.find(params[:id])
  end

  def new
    @trabajo = Trabajo.new
  end

  def create
    @trabajo = Trabajo.new(params[:trabajo])
    if @trabajo.save
      redirect_to trabajos_path
    else
      render :action => 'new'
    end
  end


end
