class CredentialsController < ApplicationController
  def index
    matching_credentials = Credential.all

    @list_of_credentials = matching_credentials.order({ :created_at => :desc })

    render({ :template => "credentials/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_credentials = Credential.where({ :id => the_id })

    @the_credential = matching_credentials.at(0)

    render({ :template => "credentials/show.html.erb" })
  end

  def create
    the_credential = Credential.new
    the_credential.name = params.fetch("query_name")
    the_credential.date_received = params.fetch("query_date_received")
    the_credential.description = params.fetch("query_description")
    the_credential.institution = params.fetch("query_institution")

    if the_credential.valid?
      the_credential.save
      redirect_to("/credentials", { :notice => "Credential created successfully." })
    else
      redirect_to("/credentials", { :notice => "Credential failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_credential = Credential.where({ :id => the_id }).at(0)

    the_credential.name = params.fetch("query_name")
    the_credential.date_received = params.fetch("query_date_received")
    the_credential.description = params.fetch("query_description")
    the_credential.institution = params.fetch("query_institution")

    if the_credential.valid?
      the_credential.save
      redirect_to("/credentials/#{the_credential.id}", { :notice => "Credential updated successfully."} )
    else
      redirect_to("/credentials/#{the_credential.id}", { :alert => "Credential failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_credential = Credential.where({ :id => the_id }).at(0)

    the_credential.destroy

    redirect_to("/credentials", { :notice => "Credential deleted successfully."} )
  end
end
