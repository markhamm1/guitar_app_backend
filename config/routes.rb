Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/guitars" => "guitars#index"
    get "/guitars/:id" => "guitars#show"
    post "/guitars" => "guitars#create"
    patch "/guitars/:id" => "guitars#update"
    delete "/guitars/:id" => "guitars#destroy"
  end
end
