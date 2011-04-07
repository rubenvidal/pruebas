class TrabajosController < ApplicationController
  def index
    @trabajos = Trabajo.all
  end

  def show
    @trabajo = Trabajo.find(params[:id])
  end

end
