Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "works", to: "items#works", as: "works"
  get "works/stories", to: "items#works_stories", as: "works_stories"
  get "works/essays", to: "items#works_essays", as: "works_essays"
  get "works/novels", to: "items#works_novels", as: "works_novels"
  get "works/poems", to: "items#works_poems", as: "works_poems"
  get "works/collection", to: "items#works_collection", as: "works_collection"
  get "works/other", to: "items#works_other", as: "works_other"
  get "works/reviews", to: "items#works_reviews", as: "works_reviews"

  get "manuscripts", to: "items#manuscripts", as: "manuscripts"
  
  get "correspondence", to: "items#correspondence", as: "correspondence"
  get "correspondence/catalog", to: "items#correspondence_catalog", as: "correspondence_catalog"

  get "reception", to: "items#reception", as: "reception"
  get "reception/reviews", to: "items#reception_reviews", as: "reception_reviews"
  get "reception/biographical_sketches", to: "items#reception_biographical_sketches", as: "reception_biographical_sketches"

  get "resources", to: "items#resources", as: "resources"
  get "resources/bibliography", to: "items#resources_bibliography", as: "resources_bibliography"

  get "about", to: "general#about", as: "about"
  get "about/history", to: "general#about_history", as: "about_history"
  get "about/editorial_policy", to: "general#about_editorial_policy", as: "about_editorial_policy"
  get "about/encoding_guidelines", to: "general#about_encoding_guidelines", as: "about_encoding_guidelines"
  get "about/use_statement", to: "general#about_use_statement", as: "about_use_statement"
  get "about/people", to: "general#about_people", as: "about_people"
  get "about/statement_of_purpose", to: "general#about_statement_of_purpose", as: "about_statement_of_purpose"
  
  # no subnav for biographical sketch
  get "about/chesnutt", to: "general#biographical_sketch", as: "about_chesnutt"

end
