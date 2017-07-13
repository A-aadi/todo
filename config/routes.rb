Rails.application.routes.draw do

  resources :welcome do
    collection do
      get :'goodbye' , to:  'welcome#goodbye'
    end
  end
  
  resources :tasks

  root 'welcome#index'
end