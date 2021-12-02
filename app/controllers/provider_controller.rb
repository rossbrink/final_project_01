class ProviderController < ApplicationController
  def index
    matching_providers = Provider.all
    @list_of_providers = matching_providers.order({ :created_at => :desc })

    render({ :template => "provider/index.html.erb"})
  end

  def profile
    the_id = params.fetch("path_id")

    matching_providers = Provider.where({ :id => the_id })

    @the_provider = matching_providers.at(0)

    render({ :template => "provider/profile.html.erb" })
  end
end