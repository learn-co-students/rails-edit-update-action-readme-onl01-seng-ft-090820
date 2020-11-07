Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :articles, only: [:index, :show, :new, :create] #you culd add the edit and update actions here in the array and that would accomplish the same goal as the two lines of code below


  get 'articles/:id/edit', to: 'articles#edit', as: :edit_article #this a dynamic route that accepts an :id as parameter so the controller can access it. 

  patch '/articles/:id', to: 'articles#update' #this is also dynamic, accepting the same :id as param so that the action will know which record is being altered. 
end
