Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })
  get("/directors", { :controller => "directors", :action => "disp_directors" })
  get("/actors", { :controller => "actors", :action => "disp_actors" })
  get("/movies", { :controller => "movies", :action => "disp_movies" })
  get("/directors/:dir_id", { :controller => "directors_bio", :action => "disp_directors_bio" })

end
