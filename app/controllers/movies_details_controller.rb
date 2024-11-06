class MoviesDetailsController < ApplicationController
  def disp_movies_details
    @mov_id = params.fetch("mov_id").to_i
    render({ :template => "misc_templates/movies_details_page"})
  end
end
