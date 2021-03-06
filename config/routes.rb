Rails.application.routes.draw do
  resources :messages
  root to: redirect("/#{I18n.default_locale}")

  scope "/:locale" do
    root 'homepage#index'
    devise_for :users
    resources :listings
    resources :categories
  end
end