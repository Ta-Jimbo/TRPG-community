Rails.application.routes.draw do

  devise_for :admins, skip: [:registrations, :passwords], controllers: {
  sessions: "admin/sessions"
  }

  devise_for :users, skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
  }

  root "public/homes#top"

  scope module: :public do
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
