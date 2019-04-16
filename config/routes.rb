Rails.application.routes.draw do
  devise_for :users
  root 'homepage#index'

  scope "/:locale" do
    root 'homepage#index'
  end
end
