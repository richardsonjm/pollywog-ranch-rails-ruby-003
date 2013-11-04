class TadpolesController < ApplicationController
  
  def index
    @tadpoles = Tadpole.all
  end

  def create
    tadpole = Tadpole.new(
      :name => params[:name],
      :color => params[:color],
      :frog_id => params[:frog_id]
      )
    tadpole.save
    redirect_to '/tadpoles'
  end

  def new
  end

  def show
    @tadpole = Tadpole.find(params[:id].to_i)
  end


  def edit
    @tadpole = Tadpole.find(params[:id].to_i)
  end

  def update
    tadpole = Tadpole.find(params[:id].to_i)
    tadpole.update(
      :name => params[:name],
      :color => params[:color]
    )
    redirect_to '/tadpoles'
  end

  def destroy
    Tadpole.find(params[:id].to_i).destroy
    redirect_to '/tadpoles'
  end

  def evolve
    tadpole = Tadpole.find(params[:id].to_i)
    frog = Frog.new
    frog.name = tadpole.name
    frog.color = tadpole.color
    frog.pond_id = tadpole.frog.pond_id
    frog.save
    Tadpole.find(params[:id].to_i).destroy
    redirect_to '/frogs'
  end

end
