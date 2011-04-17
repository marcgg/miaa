Miaa::Application.routes.draw do
  root :to => "website#index"
  
  # WEBSITE MAP
  match "/presentation", :to => "website#presentation", :as => :presentation
  match "/faire-un-don", :to => "website#give", :as => :give
  match "/actualite", :to => "website#news", :as => :news
  match "/devenir-benevole", :to => "website#join", :as => :join
  match "/contact", :to => "website#contact", :as => :contact
  match "/presse", :to => "website#press", :as => :press
  match "/photos", :to => "website#photos", :as => :photos
  match "/credits-site", :to => "website#credits", :as => :credits
  match "/une-journee-chez-miaa", :to => "website#a_day_there", :as => :a_day_there

  # TUMBLR
  match "/get_news", :to => "website#get_news", :as => :get_news
  
  # NEWSLETTER
  resources :subscribers
end
