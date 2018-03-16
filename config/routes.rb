Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # We set the root of our application as posts/index, so whenever a visitor points her browser to the root of our
  # application, she will be presented with the index page of our post.
  root to: "posts#index"

  # The resources line provides us with all of the actions available, and the include: new, index, create, show, edit,
  # update and destroy
  resources :posts

  # Static pages route
  get "/pages/*page" => "pages#show"

end
