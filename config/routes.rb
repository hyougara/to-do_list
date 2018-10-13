Rails.application.routes.draw do
  get "/user/index"=>'users#index'
  get "/users/:id"=> "users#show"
  get "/user/new"=>'users#new'
  post "/user/create"=> "users#create"
  get "/users/:id/edit"=> "users#edit"
  post "/users/:id/update"=> "users#update"
  post "/users/:id/destroy"=> "users#destroy"

  root to: 'lists#index'
  get "/new" => 'lists#new'
  get "/lists/:id/edit" => 'lists#edit'
  post "/create" => "lists#create"
  post "/lists/:id/update" => "lists#update"
  post "/lists/:id/destroy" => "lists#destroy"

end
