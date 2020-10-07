Rails.application.routes.draw do
  

  namespace :dashboard do
    namespace :admin do
      get 'subjects/index'
    end
  end

  namespace :dashboard do
    namespace :admin do
      get 'subjects/show'
    end
  end

  namespace :dashboard do
    namespace :admin do
      get 'subjects/new'
    end
  end

  namespace :dashboard do
    namespace :admin do
      get 'subjects/edit'
    end
  end

  namespace :dashboard do
    namespace :admin do
      get 'subjects/delete'
    end
  end

  namespace :dashboard do
    namespace :teacher do
      get 'subjects/index'
    end
  end

  namespace :dashboard do
    namespace :teacher do
      get 'subjects/show'
    end
  end

  namespace :dashboard do
    namespace :teacher do
      get 'subjects/new'
    end
  end

  namespace :dashboard do
    namespace :teacher do
      get 'subjects/edit'
    end
  end

  devise_for :students
  devise_for :teachers
  devise_for :admins

  namespace :dashboard do
   authenticated :student do 
      resources :subjects, module: "student", :only=> [:show, :index]
    end

    authenticated :teacher do
      resources :subjects, module: "teacher"
    end

    authenticated :admin do
      resources :subjects, module: "admin"
    end
    root to: "dashboard#index"
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html



  get 'pages/index'
  
  root to: "pages#index"
end
