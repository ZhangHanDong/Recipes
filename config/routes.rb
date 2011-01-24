RecipeApp::Application.routes.draw do
  
  resources :categories
  resources :recipes
  resources :ingredients do
    member do
      delete :delete
    end
  end
  
  root :to => "recipes#index"
end
