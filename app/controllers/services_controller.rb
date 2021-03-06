class ServicesController < ApplicationController
  def index
    matching_services = Service.all

    @list_of_services = matching_services.order({ :created_at => :desc })

    render({ :template => "services/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_services = Service.where({ :id => the_id })

    @the_service = matching_services.at(0)

    render({ :template => "services/show.html.erb" })
  end

  def create
    the_service = Service.new
    the_service.provider_id = params.fetch("query_provider_id")
    the_service.need_id = params.fetch("query_need_id")

    if the_service.valid?
      the_service.save
      redirect_to("/services", { :notice => "Service created successfully." })
    else
      redirect_to("/services", { :notice => "Service failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_service = Service.where({ :id => the_id }).at(0)

    the_service.provider_id = params.fetch("query_provider_id")
    the_service.need_id = params.fetch("query_need_id")

    if the_service.valid?
      the_service.save
      redirect_to("/services/#{the_service.id}", { :notice => "Service updated successfully."} )
    else
      redirect_to("/services/#{the_service.id}", { :alert => "Service failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_service = Service.where({ :id => the_id }).at(0)

    the_service.destroy

    redirect_to("/services", { :notice => "Service deleted successfully."} )
  end
end
