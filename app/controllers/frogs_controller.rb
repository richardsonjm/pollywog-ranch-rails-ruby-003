class FrogsController < ApplicationController
  
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
    @frog = Frog.find(params[:id].to_i)
  end

  def edit
    @frog = Frog.find(params[:id].to_i)
    @ponds = Pond.all
  end

  def update
    frog = Frog.find(params[:id].to_i)
    frog.update(
      :name => params[:name],
      :color => params[:color],
      :pond_id => params[:pond_id]
    )
    redirect_to '/frogs'
  end

  def destroy
    Frog.find(params[:id].to_i).destroy
    redirect_to '/frogs'
  end

  def tadpole
    # Write the code to find the correct frog
    # and redirect to new tadpole form view
    @frog = Frog.find(params[:id].to_i)
    render 'tadpoles/new'
  end

end
