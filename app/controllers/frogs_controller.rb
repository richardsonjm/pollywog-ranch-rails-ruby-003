class FrogsController < ApplicationController
   get '/frogs'  do
    # Write the code to get all frogs 
    # and send them to the index view listing all frogs.
    @frogs = Frog.all
    erb :'frogs/index'
  end

  def index
    @frogs = Frogs.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @frogs }
    end
  end 


  post '/frogs' do
    # Write the code to save new frogs 
    # and redirect to the index view listing all frogs.
    frog = Frog.create(params)

    redirect '/frogs'
  end

  get '/frogs/new' do
    # Write the code to send to the new form view.
    erb :'frogss/new'
  end

  get '/frogs/:id' do
    # Write the code to find the correct frog
    # by id given in the url.
    # Then send them to the show view.
    @frog = Frog.find(params[:id].to_i)
    erb :'frogs/show'
  end

  get '/frogs/:id/edit' do
    # Write the code to find the correct frog
    # by id given in the url.
    # Then send them to edit form view.
    @frog = Frog.find(params[:id].to_i)
    erb :'frogs/edit'
  end

  post '/frogs/:id/update' do
    # Write the code to find the correct frog
    # and set it's attributes and save.
    # Then redirect to the index view listing all frogs.
    frog = Frog.find(params[:id].to_i)
    frog.update(
      :name => params[:name],
      :color => params[:color],
      :pond_id => params[:pond_id]
    )
    redirect '/frogs'
  end

  get '/frogs/:id/destroy' do
    # Write the code to find the correct frog
    # and destroy it.
    # Then redirect to the index view listing all frogs.
    Frog.find(params[:id].to_i).destroy
    redirect '/frogs'
  end

  get '/frogs/:id/tadpoles/new' do
    # Write the code to find the correct frog
    # and redirect to new tadpole form view
    @frog = Frog.find(params[:id].to_i)
    erb :'tadpoles/new'
  end

end
