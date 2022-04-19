Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #home page controller
#  get 'welcome/home', to: 'welcome#home'

  #changing home page to root page
  root 'welcome#home'

  #about us controller
# get 'welcome/about', to: 'welcome#about'

  # fixing confilict after changing homepage to root
  get 'about', to: 'welcome#about'

end
