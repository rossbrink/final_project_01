class ProviderController < ApplicationController
  def index
    matching_providers = Provider.all
    @list_of_providers = matching_providers.order({ :created_at => :desc })

    render({ :template => "provider/index.html.erb"})
  end
end