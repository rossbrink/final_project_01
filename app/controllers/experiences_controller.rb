class ExperiencesController < ApplicationController
  def index
    matching_experiences = Experience.all

    @list_of_experiences = matching_experiences.order({ :created_at => :desc })

    render({ :template => "experiences/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_experiences = Experience.where({ :id => the_id })

    @the_experience = matching_experiences.at(0)

    render({ :template => "experiences/show.html.erb" })
  end

  def create
    the_experience = Experience.new
    the_experience.credential_id = params.fetch("query_credential_id")
    the_experience.provider_id = params.fetch("query_provider_id")

    if the_experience.valid?
      the_experience.save
      redirect_to("/experiences", { :notice => "Experience created successfully." })
    else
      redirect_to("/experiences", { :notice => "Experience failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_experience = Experience.where({ :id => the_id }).at(0)

    the_experience.credential_id = params.fetch("query_credential_id")
    the_experience.provider_id = params.fetch("query_provider_id")

    if the_experience.valid?
      the_experience.save
      redirect_to("/experiences/#{the_experience.id}", { :notice => "Experience updated successfully."} )
    else
      redirect_to("/experiences/#{the_experience.id}", { :alert => "Experience failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_experience = Experience.where({ :id => the_id }).at(0)

    the_experience.destroy

    redirect_to("/experiences", { :notice => "Experience deleted successfully."} )
  end
end
