Rails.application.routes.draw do
  root "emails#index"
  resources :emails
  get "/all_emails", to: "emails#all", :as => :all_emails
  get "/all_emails/:id", to: "emails#show_one", :as => :show_one
end
