RecipeApp::Application.routes.draw do
  
  resources :categories
  resources :recipes
  resources :ingredients
  
  root :to => "recipes#index"
end
