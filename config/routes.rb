Rails.application.routes.draw do
  resources :contact_phones
  root 'contact_phones#new'
end
