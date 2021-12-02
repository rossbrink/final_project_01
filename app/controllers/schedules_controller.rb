class SchedulesController < ApplicationController
  def index
    matching_schedules = Schedule.all

    @list_of_schedules = matching_schedules.order({ :created_at => :desc })

    render({ :template => "schedules/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_schedules = Schedule.where({ :id => the_id })

    @the_schedule = matching_schedules.at(0)

    render({ :template => "schedules/show.html.erb" })
  end

  def create
    the_schedule = Schedule.new
    the_schedule.provider_id = params.fetch("query_provider_id")

    if the_schedule.valid?
      the_schedule.save
      redirect_to("/schedules", { :notice => "Schedule created successfully." })
    else
      redirect_to("/schedules", { :notice => "Schedule failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_schedule = Schedule.where({ :id => the_id }).at(0)

    the_schedule.provider_id = params.fetch("query_provider_id")

    if the_schedule.valid?
      the_schedule.save
      redirect_to("/schedules/#{the_schedule.id}", { :notice => "Schedule updated successfully."} )
    else
      redirect_to("/schedules/#{the_schedule.id}", { :alert => "Schedule failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_schedule = Schedule.where({ :id => the_id }).at(0)

    the_schedule.destroy

    redirect_to("/schedules", { :notice => "Schedule deleted successfully."} )
  end
end
