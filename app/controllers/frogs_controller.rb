class FrogsController < ApplicationController
  
  before_filter :get_frog, :only => [:show, :edit, :update, :destroy, :tadpole]
  
  def get_frog
    @frog = Frog.find(params[:id].to_i)
  end

  def index
    @frogs = Frog.all
  end 

  def create
    frog = Frog.new(
      :name => params[:name],
      :color => params[:color],
      :pond_id => params[:pond_id]
      )
    frog.save
    redirect_to '/frogs'
  end

  def new
    @ponds = Pond.all
  end

  def show
  end

  def edit
    @ponds = Pond.all
  end

  def update
    @frog.update(
      :name => params[:name],
      :color => params[:color],
      :pond_id => params[:pond_id]
    )
    redirect_to '/frogs'
  end

  def destroy
    @frog.destroy
    redirect_to '/frogs'
  end

  def tadpole
    render 'tadpoles/new'
  end

end
