class ClientesController < ApplicationController
  # GET /clientes
  def index
    @clientes = Cliente.all
  end

  # GET /clientes/1
  def show
    @cliente = Cliente.find(params[:id])
  end

  # GET /clientes/new
  def new
    @cliente = Cliente.new
  end

  # GET /clientes/1/edit
  def edit
    @cliente = Cliente.find(params[:id])
  end

  # POST /clientes
  def create
    @cliente = Cliente.new(params[:cliente])
    if @cliente.save
      redirect_to(@cliente, :notice => 'Cliente was successfully created.')
    else
      render :action => "new"
    end
  end

  # PUT /clientes/1
  def update
    @cliente = Cliente.find(params[:id])

    if @cliente.update_attributes(params[:cliente])
      redirect_to(@cliente, :notice => 'Cliente was successfully updated.')
    else
      render :action => "edit"
    end
  end

  # DELETE /clientes/1
  def destroy
    @cliente = Cliente.find(params[:id])
    @cliente.destroy
    redirect_to(clientes_url)
  end
end
