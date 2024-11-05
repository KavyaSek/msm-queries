class ActorsController < ApplicationController
  def disp_actors
    render({ :template => "misc_templates/actors_page"})
  end
end
