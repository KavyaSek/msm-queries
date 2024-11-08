class OverallController < ApplicationController
  def disp_directors
    render({ :template => "misc_templates/directors_page"})
  end

  def disp_movies
    render({ :template => "misc_templates/movies_page"})
  end

  def disp_actors
    render({ :template => "misc_templates/actors_page"})
  end  
  
  def disp_youngest
    @youngest_director = Director.where.not({ :dob => nil }).order({ :dob => :asc }).last
    @formatted_dob = @youngest_director.dob.strftime("%B %d, %Y")
    
    render({ :template => "misc_templates/youngest"})
  end
  
  def disp_oldest
    @oldest_director = Director.where.not({ :dob => nil }).order({ :dob => :asc }).first
    @formatted_dob = @oldest_director.dob.strftime("%B %d, %Y")
    
    render({ :template => "misc_templates/oldest"})
  end
  

  def disp_directors_bio
    @dir_id = params.fetch("dir_id").to_i
    render({ :template => "misc_templates/directors_bio_page"})
  end

  def disp_movies_details
    @mov_id = params.fetch("mov_id").to_i
    render({ :template => "misc_templates/movies_details_page"})
  end

  def disp_actors_bio
    @actor_id = params.fetch("actor_id").to_i
    render({ :template => "misc_templates/actors_bio_page"})
  end

 
end
