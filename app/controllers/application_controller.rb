class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def main
    @movies = Movie.all
    render "main"
  end
  
  def movie
    @movie = Movie.find_by_id(params["id"])
    if !(@movie == nil)
      render "movie"
    else
      render "nomovie"
    end
  end
  
  def new
    render "new"
  end
  
  def newmovie
    m = Movie.new
    m.name = params["name"]
    m.imgurl = params["imgurl"]
    m.save
    redirect_to "/movie/#{m.id}"
  end
  
  def edit
    @movie = Movie.find_by_id(params["id"])
    render "edit"
  end
  
  def editmovie
    m = Movie.find_by_id(params["id"])
    m.name = params["name"]
    m.imgurl = params["imgurl"]
    m.save
    redirect_to "/movie/#{m.id}"
  end
  
  def delete
    m = Movie.find_by_id(params['id'])
    m.destroy
    redirect_to "/"
  end
end
