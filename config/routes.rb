Rails.application.routes.draw do

  mount Collect::Engine, at: "/collect"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
