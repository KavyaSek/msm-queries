class MoviesController < ApplicationController
  def disp_movies
    render({ :template => "misc_templates/movies_page"})
  end
end
