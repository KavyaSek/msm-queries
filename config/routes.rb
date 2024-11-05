Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })
  get("/directors", { :controller => "directors", :action => "disp_directors" })
  get("/actors", { :controller => "actors", :action => "disp_actors" })
end
