class BusinessTypesController < ApplicationController
  def index
    matching_business_types = BusinessType.all

    @list_of_business_types = matching_business_types.order({ :created_at => :desc })

    render({ :template => "business_types/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_business_types = BusinessType.where({ :id => the_id })

    @the_business_type = matching_business_types.at(0)

    render({ :template => "business_types/show.html.erb" })
  end

  def create
    the_business_type = BusinessType.new
    the_business_type.name = params.fetch("query_name")
    the_business_type.provider_id = 1123
    # the_business_type.description = params.fetch("query_description")

    if the_business_type.valid?
      the_business_type.save
      redirect_to("/business_types", { :notice => "Business type created successfully." })
    else
      redirect_to("/business_types", { :notice => "Business type failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_business_type = BusinessType.where({ :id => the_id }).at(0)

    the_business_type.name = params.fetch("query_name")
    the_business_type.description = params.fetch("query_description")

    if the_business_type.valid?
      the_business_type.save
      redirect_to("/business_types/#{the_business_type.id}", { :notice => "Business type updated successfully."} )
    else
      redirect_to("/business_types/#{the_business_type.id}", { :alert => "Business type failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_business_type = BusinessType.where({ :id => the_id }).at(0)

    the_business_type.destroy

    redirect_to("/business_types", { :notice => "Business type deleted successfully."} )
  end
end
