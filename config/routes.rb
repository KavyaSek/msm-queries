Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })
  get("/directors", { :controller => "overall", :action => "disp_directors" })
  get("/actors", { :controller => "overall", :action => "disp_actors" })
  get("/movies", { :controller => "overall", :action => "disp_movies" })

  get("/directors/youngest", { :controller => "overall", :action => "disp_youngest" })
  get("/directors/eldest", { :controller => "overall", :action => "disp_oldest" })

  get("/directors/:dir_id", { :controller => "overall", :action => "disp_directors_bio" })
  get("/movies/:mov_id", { :controller => "overall", :action => "disp_movies_details" })
  get("/actors/:actor_id", { :controller => "overall", :action => "disp_actors_bio" })
  

end
