Rails.application.routes.draw do
  root 'homepage#index'

  scope "/:locale" do
    root 'homepage#index'
  end
end
