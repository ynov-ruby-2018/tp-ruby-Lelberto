Rails.application.routes.draw do
  root to: redirect("/#{I18n.default_locale}")

  scope "/:locale" do
    root 'homepage#index'
    devise_for :users
  end
end
