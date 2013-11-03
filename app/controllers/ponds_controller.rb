class PondsController < ApplicationController

  def index
    # Write the code to get all ponds 
    # and send them to the index view listing all ponds.
    @ponds = Pond.all
  end

  def create
    pond = Pond.create(params)
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
    # Write the code to find the correct pond
    # and set it's attributes and save.
    # Then redirect to the index view listing all ponds.
    pond = Pond.find(params[:id].to_i)
    pond.update(
      :name => params[:name],
      :water_type => params[:water_type]
    )
    redirect_to '/ponds'
  end

  def destroy
    # Write the code to find the correct pond
    # and destroy it.
    # Then redirect to the index view listing all ponds.
    Pond.find(params[:id].to_i).destroy
    redirect_to '/ponds'
    
  end
end
