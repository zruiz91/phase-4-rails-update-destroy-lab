Rails.application.routes.draw do
  resources :plants
  patch "/plants/:id/like", to: "plants#increment_likes"
end
