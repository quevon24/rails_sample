Rails.application.routes.draw do
  # devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  mount Ckeditor::Engine => '/ckeditor'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # We set the root of our application as posts/index, so whenever a visitor points her browser to the root of our
  # application, she will be presented with the index page of our post.
  root to: "posts#index"

  # The resources line provides us with all of the actions available, and the include: new, index, create, show, edit,
  # update and destroy
  # Create (posts#new, posts#create)
  # Read (posts#index, posts#show)
  # Update (posts#edit, posts#update)
  # Destroy (posts#destroy)
  #
  # original: resources :posts
  #
  # actions personalizados:
  # resources :posts do
  #   collection do
  #     get 'json_test'
  #   end
  # end

  resources :posts do
    collection do
      get 'json_test'
      get 'json_find_posts'
    end
  end

  # alternativa
  # get 'json_test' => "posts#json_test"

  # Static pages route
  get "/pages/*page" => "pages#show"


  # Devise custom controllers and routes
  devise_for :users, controllers: {
      sessions: 'users/sessions',
      passwords: 'users/passwords',
      registrations: 'users/registrations'
  }

  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
  end

  devise_scope :user do
    delete 'logout', to: 'devise/sessions#destroy'
  end

end
