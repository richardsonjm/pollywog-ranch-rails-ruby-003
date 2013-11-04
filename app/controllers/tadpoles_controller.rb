class TadpolesController < ApplicationController
  
  def index
    @tadpoles = Tadpole.all
  end

  def create
    tadpole = Tadpole.new(
      :name => params[:name],
      :color => params[:color],
      :frog_is => params[:frog_id]
      )
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

  # post '/tadpoles/:id/update' do
  #   # Write the code to find the correct tadpole
  #   # and set it's attributes and save.
  #   # Then redirect to the index view listing all tadpoles.
  #   tadpole = Tadpole.find(params[:id].to_i)
  #   tadpole.update(
  #     :name => params[:name],
  #     :color => params[:color]
  #   )
  #   redirect '/tadpoles'
  # end

  # get '/tadpoles/:id/destroy' do
  #   # Write the code to find the correct tadpole
  #   # and destroy it.
  #   # Then redirect to the index view listing all tadpoles.
  #   Tadpole.find(params[:id].to_i).destroy
  #   redirect '/tadpoles'
  # end

  # get '/tadpoles/:id/evolve' do
  #   # Write the code to find the correct tadpole
  #   # by id given in the url and store it temporarily.
  #   # Create a new frog and pass the attributes of the 
  #   # tadpole into the frog that it is becoming.
  #   # Then save the new frog and destroy the old tadpole.
  #   # Then redirect to the index view listing all tadpoles.
  #   tadpole = Tadpole.find(params[:id].to_i)
  #   frog = Frog.new
  #   frog.name = tadpole.name
  #   frog.color = tadpole.color
  #   frog.pond_id = tadpole.frog.pond_id
  #   frog.save
  #   Tadpole.find(params[:id].to_i).destroy
  #   redirect '/tadpoles'
  # end

end
