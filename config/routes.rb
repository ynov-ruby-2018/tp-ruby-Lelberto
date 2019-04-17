Rails.application.routes.draw do
  resources :listings
  resources :categories
  root to: redirect("/#{I18n.default_locale}")

  scope "/:locale" do
    root 'homepage#index'
    devise_for :users
  end
end
