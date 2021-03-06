class LandmarksController < ApplicationController
  # add controller methods

  get '/landmarks' do 
    @landmarks = Landmark.all
    erb :'landmarks/index'
  end

post '/landmarks' do 
  @landmark = Landmark.create(params[:landmark])
  redirect to "/landmarks/#{@landmark.id}"
end

  get '/landmarks/new' do 
    @figures = Figure.all
    erb :'landmarks/new'
  end

  get '/landmarks/:id' do 
    @landmark = Landmark.find(params[:id])
    erb :'landmarks/show'
  end

  get '/landmarks/:id/edit' do
    @figures = Figure.all
    @landmark = Landmark.find(params[:id])
    erb :'landmarks/edit'
  end

  patch '/landmarks/:id' do
    @landmark = Landmark.find(params[:id])
    @landmark.update(params[:landmark])
    redirect to "/landmarks/#{@landmark.id}"
  end

end
