Rails.application.routes.draw do

  devise_for :users,
             controllers: {
                 sessions: 'users/sessions',
                 registrations: 'users/registrations',
                 passwords: 'users/passwords',
                 mailer: 'users/mailer',
                 confirmations: 'users/confirmations',
             },
             sign_out_via: [:post, :delete]

  root to: 'pages#index'
  get 'users', to:'members#index'




end
