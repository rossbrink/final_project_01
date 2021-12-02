class AvailabilitiesController < ApplicationController
  def index
    matching_availabilities = Availability.all

    @list_of_availabilities = matching_availabilities.order({ :created_at => :desc })

    render({ :template => "availabilities/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_availabilities = Availability.where({ :id => the_id })

    @the_availability = matching_availabilities.at(0)

    render({ :template => "availabilities/show.html.erb" })
  end

  def create
    the_availability = Availability.new
    the_availability.day = params.fetch("query_day")
    the_availability.open_time = params.fetch("query_open_time")
    the_availability.close_time = params.fetch("query_close_time")
    the_availability.schedule_id = params.fetch("query_schedule_id")

    if the_availability.valid?
      the_availability.save
      redirect_to("/availabilities", { :notice => "Availability created successfully." })
    else
      redirect_to("/availabilities", { :notice => "Availability failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_availability = Availability.where({ :id => the_id }).at(0)

    the_availability.day = params.fetch("query_day")
    the_availability.open_time = params.fetch("query_open_time")
    the_availability.close_time = params.fetch("query_close_time")
    the_availability.schedule_id = params.fetch("query_schedule_id")

    if the_availability.valid?
      the_availability.save
      redirect_to("/availabilities/#{the_availability.id}", { :notice => "Availability updated successfully."} )
    else
      redirect_to("/availabilities/#{the_availability.id}", { :alert => "Availability failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_availability = Availability.where({ :id => the_id }).at(0)

    the_availability.destroy

    redirect_to("/availabilities", { :notice => "Availability deleted successfully."} )
  end
end
