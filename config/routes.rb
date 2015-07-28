Rails.application.routes.draw do
  root "application#main"
  
  get "/main" => "application#main"
  get "/movie/:id" => "application#movie"
  
  get "/newmovie" => "application#new"
  get "/createnewmovie" => "application#newmovie"
  
  get "/edit/:id" => "application#edit"
  get "/editmovie/:id" => "application#editmovie"
  
  get "/delete/:id" => "application#delete"
end
