Rails.application.routes.draw do
  # Routes for the Asset resource:
  # CREATE
  get "/assets/new", :controller => "assets", :action => "new"
  post "/create_asset", :controller => "assets", :action => "create"

  # READ
  get "/assets", :controller => "assets", :action => "index"
  get "/assets/:id", :controller => "assets", :action => "show"

  # UPDATE
  get "/assets/:id/edit", :controller => "assets", :action => "edit"
  post "/update_asset/:id", :controller => "assets", :action => "update"

  # DELETE
  get "/delete_asset/:id", :controller => "assets", :action => "destroy"
  #------------------------------

  # Routes for the Asset_type resource:
  # CREATE
  get "/asset_types/new", :controller => "asset_types", :action => "new"
  post "/create_asset_type", :controller => "asset_types", :action => "create"

  # READ
  get "/asset_types", :controller => "asset_types", :action => "index"
  get "/asset_types/:id", :controller => "asset_types", :action => "show"

  # UPDATE
  get "/asset_types/:id/edit", :controller => "asset_types", :action => "edit"
  post "/update_asset_type/:id", :controller => "asset_types", :action => "update"

  # DELETE
  get "/delete_asset_type/:id", :controller => "asset_types", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
