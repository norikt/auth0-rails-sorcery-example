Rails.application.routes.draw do
  root 'home#show'

  get '/dashboard' => 'dashboard#show'

  post "oauth/callback" => "oauths#callback"
  get "oauth/callback" => "oauths#callback"
  get "oauth/sign_in/:provider" => "oauths#sign_in", as: :auth_at_provider

  get '/logout' => 'logout#logout'
end
