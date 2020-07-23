Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end


  namespace :api do
    get "/chairs" => "chairs#index"
    get "/chairs/new" => "chairs#new"
    get "/chairs/:id" => "chairs#show"

    post "/chairs" => "chairs#create"

    get "/chairs/:id/edit" => "chairs#edit"
    patch "/chairs/:id" => "chairs#update"

    delete "/chairs/:id" => "chairs#destroy"
  end
end
