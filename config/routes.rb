LearningPortal::Application.routes.draw do

  get "sidebar/all_tags"

  devise_for :users, :controllers => {
    :registrations  =>  "registrations",
    :sessions       =>  "sessions",
    :passwords      =>  "passwords"
  }

  resource :search do
    collection do
      get :result
    end
  end
  root :to => 'searches#build'
  match '/tag_sidebar' => 'sidebar#all_tags', :as => :tag_sidebar
  match '/contributor_sidebar' => 'sidebar#all_contributors', :as => :contributor_sidebar
end
