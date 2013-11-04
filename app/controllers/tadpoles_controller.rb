class TadpolesController < ApplicationController
  
  before_filter :get_tadpole, :only => [:show, :edit, :update, :destroy, :evolve]

  def get_tadpole
    @tadpole = Tadpole.find(params[:id].to_i)
  end

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
  end


  def edit
  end

  def update
    @tadpole.update(
      :name => params[:name],
      :color => params[:color]
    )
    redirect_to '/tadpoles'
  end

  def destroy
    @tadpole.destroy
    redirect_to '/tadpoles'
  end

  def evolve
    frog = Frog.new
    frog.name = @tadpole.name
    frog.color = @tadpole.color
    frog.pond_id = @tadpole.frog.pond_id
    frog.save
    @tadpole.destroy
    redirect_to '/frogs'
  end

end
