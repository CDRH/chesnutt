Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "works", to: "items#works", as: "works"
  get "manuscripts", to: "items#manuscripts", as: "manuscripts"
  get "correspondence", to: "items#correspondence", as: "correspondence"

  get "reception", to: "items#reception", as: "reception"
  get "reception/reviews", to: "items#reception_reviews", as: "reception_reviews"
  get "reception/biographical_sketches", to: "items#reception_biographical_sketches", as: "reception_biographical_sketches"

  get "scholarship", to: "items#scholarship", as: "scholarship"
  get "scholarship/bibliography", to: "items#scholarship_bibliography", as: "scholarship_bibliography"

  get "about", to: "general#about", as: "about"


  # temp page to work out some design options
  get "design", to: "general#temp_design", as: "design"

end
