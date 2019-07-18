Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get     "academy" => "pages#academy"
  get     "contact_us" => "contact_us#index"
  post     "contact_us" => "contact_us#create", as: "save_contact_us"
  get     "facilities" => "pages#facilities"
  get     "ice_mate_pass" => "pages#ice_mate_pass"
  get     "ticketing_and_pricing" => "pages#ticeting_and_pricing"
  get     '/login' => 'session#new', as: "login"
  post    '/login' => 'session#create', as: "login_create"
  delete  '/logout' => 'session#destroy', as: "logout"

  get "admin" => "admin/dashboard#index", as: "admin"
  namespace :admin do
    resources :banners
    resources :pages
    resources :downloads
  end

  root to: "home#index"
end
