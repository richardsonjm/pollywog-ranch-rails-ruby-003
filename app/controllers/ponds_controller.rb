class PondsController < ApplicationController

  def index
    @ponds = Pond.all
  end

  def create
    pond = Pond.new(
      :name => params[:name],
      :water_type => params[:water_type]
      )
    pond.save
    redirect_to '/ponds'
  end

  def new
  end

  def show
    @pond = Pond.find(params[:id].to_i)
  end

  def edit
    @pond = Pond.find(params[:id].to_i)
  end

  def update
    pond = Pond.find(params[:id].to_i)
    pond.update(
      :name => params[:name],
      :water_type => params[:water_type]
    )
    redirect_to '/ponds'
  end

  def destroy
    Pond.find(params[:id].to_i).destroy
    redirect_to '/ponds'
    
  end
end
