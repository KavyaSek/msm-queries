class DirectorsController < ApplicationController
  def disp_directors
    render({ :template => "misc_templates/directors_page"})
  end
end
