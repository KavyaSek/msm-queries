class DirectorsBioController < ApplicationController
  def disp_directors_bio
    @dir_id = params.fetch("dir_id").to_i
    render({ :template => "misc_templates/directors_bio_page"})
  end
end
