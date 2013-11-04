class PondsController < ApplicationController

  before_filter :get_pond, :only => [:show, :edit, :update, :destroy]

  def get_pond
    @pond = Pond.find(params[:id].to_i)
  end

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
  end

  def edit
  end

  def update
    @pond.update(
      :name => params[:name],
      :water_type => params[:water_type]
    )
    redirect_to '/ponds'
  end

  def destroy
    @pond.destroy
    redirect_to '/ponds'
  end
end
